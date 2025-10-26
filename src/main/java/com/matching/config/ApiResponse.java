package com.matching.config;

import com.matching.config.exception.MiniRuntimeException;
import com.matching.config.exception.ResponseCode;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

@Getter
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class ApiResponse<T> {

    private int code;
    private String message;
    private T data;

    public static <T> ApiResponse<T> success(T data) {
        return new ApiResponse<>(ResponseCode.SUCCESS.getCode(), null, data);
    }

    public static ApiResponse<Void> success() {
        return new ApiResponse<>(ResponseCode.SUCCESS.getCode(), null, null);
    }

    public static ApiResponse<Void> error(ResponseCode code, String message) {
        return new ApiResponse<>(code.getCode(), message, null);
    }

    public static ApiResponse<Void> error(MiniRuntimeException runtimeException) {
        return new ApiResponse<>(runtimeException.getCode().getCode(), runtimeException.getMessage(), null);
    }

    public static ApiResponse<Void> error(MiniRuntimeException runtimeException, String message) {
        return new ApiResponse<>(runtimeException.getCode().getCode(), message, null);
    }
}
