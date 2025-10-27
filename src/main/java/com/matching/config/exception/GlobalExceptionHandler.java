package com.matching.config.exception;

import com.matching.config.ApiResponse;
import jakarta.validation.ConstraintViolationException;
import lombok.extern.slf4j.Slf4j;
import org.apache.tomcat.util.http.fileupload.impl.InvalidContentTypeException;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.NoHandlerFoundException;
import org.springframework.web.servlet.resource.NoResourceFoundException;

import java.time.DateTimeException;
import java.util.stream.Collectors;

@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    // ============================
    // Spring Validation 관련
    // ============================
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ApiResponse<Void> handleValidation(MethodArgumentNotValidException e) {
        String msg = e.getBindingResult().getFieldErrors().stream()
                .map(fe -> fe.getField() + ": " + fe.getDefaultMessage())
                .collect(Collectors.joining(", "));
        log.error("[{}] MethodArgumentNotValidException: {}", ResponseCode.INVALID_PARAMETER.getCode(), msg);
        return ApiResponse.error(ResponseCode.INVALID_PARAMETER, msg);
    }

    @ExceptionHandler(ConstraintViolationException.class)
    public ApiResponse<Void> handleConstraintViolation(ConstraintViolationException e) {
        log.error("[{}] ConstraintViolationException: {}", ResponseCode.INVALID_PARAMETER.getCode(), e.getMessage());
        return ApiResponse.error(ResponseCode.INVALID_PARAMETER, "입력값이 유효하지 않습니다.");
    }

    @ExceptionHandler(MissingServletRequestParameterException.class)
    public ApiResponse<Void> handleMissingParam(MissingServletRequestParameterException e) {
        String msg = e.getParameterName() + "의 값이 누락되었습니다.";
        log.error("[{}] MissingServletRequestParameterException: {}", ResponseCode.MISSING_PARAMETER.getCode(), msg);
        return ApiResponse.error(ResponseCode.MISSING_PARAMETER, msg);
    }

    @ExceptionHandler(HttpMessageNotReadableException.class)
    public ApiResponse<Void> handleNotReadable(HttpMessageNotReadableException e) {
        log.error("[{}] HttpMessageNotReadableException: {}", ResponseCode.INVALID_FORMAT.getCode(), e.getMessage());
        return ApiResponse.error(ResponseCode.INVALID_FORMAT, "요청 본문이 올바르지 않습니다.");
    }

    @ExceptionHandler(DateTimeException.class)
    public ApiResponse<Void> handleDateTime(DateTimeException e) {
        log.error("[{}] DateTimeException: {}", ResponseCode.INVALID_FORMAT.getCode(), e.getMessage());
        return ApiResponse.error(ResponseCode.INVALID_FORMAT, "날짜/시간 형식이 올바르지 않습니다.");
    }

    // ============================
    // 요청/라우팅 관련
    // ============================
    @ExceptionHandler(NoHandlerFoundException.class)
    public ApiResponse<Void> handleNotFound(NoHandlerFoundException e) {
        log.error("[{}] NoHandlerFoundException: {}", ResponseCode.ENDPOINT_NOT_FOUND.getCode(), e.getMessage());
        return ApiResponse.error(ResponseCode.ENDPOINT_NOT_FOUND, "엔드포인트를 찾을 수 없습니다.");
    }

    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    public ApiResponse<Void> handleMethodNotAllowed(HttpRequestMethodNotSupportedException e) {
        log.error("[{}] HttpRequestMethodNotSupportedException: {}", ResponseCode.UNSUPPORTED_METHOD.getCode(), e.getMessage());
        return ApiResponse.error(ResponseCode.UNSUPPORTED_METHOD, "허용되지 않은 요청 메서드입니다.");
    }

    // ============================
    // 파일 업로드 / Content-Type
    // ============================
    @ExceptionHandler(MaxUploadSizeExceededException.class)
    public ApiResponse<Void> handleMaxUpload(MaxUploadSizeExceededException e) {
        log.error("[{}] MaxUploadSizeExceededException: {}", ResponseCode.PAYLOAD_TOO_LARGE.getCode(), e.getMessage());
        return ApiResponse.error(ResponseCode.PAYLOAD_TOO_LARGE, "파일 크기가 너무 큽니다.");
    }

    @ExceptionHandler(InvalidContentTypeException.class)
    public ApiResponse<Void> handleInvalidContentType(InvalidContentTypeException e) {
        log.error("[{}] InvalidContentTypeException: {}", ResponseCode.UNSUPPORTED_MEDIA_TYPE.getCode(), e.getMessage());
        return ApiResponse.error(ResponseCode.UNSUPPORTED_MEDIA_TYPE, "데이터 형식이 잘못되었습니다.");
    }

    // ============================
    // DB 관련
    // ============================
    @ExceptionHandler(DataIntegrityViolationException.class)
    public ApiResponse<Void> handleDataIntegrityViolation(DataIntegrityViolationException e) {
        Throwable root = getRootCause(e);
        String msg = root.getMessage().toLowerCase();

        if (msg.contains("duplicate") || msg.contains("unique constraint")) {
            log.error("[{}] Duplicate Data: {}", ResponseCode.DUPLICATE_KEY.getCode(), msg);
            return ApiResponse.error(ResponseCode.DUPLICATE_KEY, "중복된 데이터가 존재합니다.");
        }
        if (msg.contains("value too long") || msg.contains("data too long")) {
            log.error("[{}] Constraint Violation: {}", ResponseCode.CONSTRAINT_VIOLATION.getCode(), msg);
            return ApiResponse.error(ResponseCode.CONSTRAINT_VIOLATION, "입력값이 너무 깁니다.");
        }

        log.error("[{}] Database Error: {}", ResponseCode.DATABASE_ERROR.getCode(), msg);
        return ApiResponse.error(ResponseCode.DATABASE_ERROR, "데이터베이스 처리 오류가 발생했습니다.");
    }

    // ============================
    // 인증 / 인가
    // ============================
    @ExceptionHandler(AccessDeniedException.class)
    public ApiResponse<Void> handleAccessDenied(AccessDeniedException e) {
        log.error("[{}] AccessDeniedException: {}", ResponseCode.ACCESS_DENIED.getCode(), e.getMessage());
        return ApiResponse.error(ResponseCode.ACCESS_DENIED, "접근 권한이 없습니다.");
    }

    @ExceptionHandler(NoResourceFoundException.class)
    public void handleNoResourceFound(NoResourceFoundException e) {
        log.debug("Static resource not found: {}", e.getResourcePath());
    }

    // ============================
    // 사용자 정의 예외
    // ============================
    @ExceptionHandler(MiniRuntimeException.class)
    public ApiResponse<Void> handleMiniRuntimeException(MiniRuntimeException e) {
        log.error("[{}] {}: {}", e.getCode().getCode(), e.getClass().getSimpleName(), e.getMessage());
        return ApiResponse.error(e.getCode(), e.getMessage());
    }

    // ============================
    // 기타 / 예측 불가 예외
    // ============================
    @ExceptionHandler(Exception.class)
    public ApiResponse<Void> handleUnhandled(Exception e) {
        log.error("[{}] Unhandled Exception: {}", ResponseCode.INTERNAL_SERVER_ERROR.getCode(), e.getMessage(), e);
        return ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR, "서버 내부 오류가 발생했습니다.");
    }

    private Throwable getRootCause(Throwable t) {
        Throwable cause = t.getCause();
        return (cause != null && cause != t) ? getRootCause(cause) : t;
    }
}
