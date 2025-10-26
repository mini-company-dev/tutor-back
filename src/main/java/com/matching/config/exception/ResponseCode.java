package com.matching.config.exception;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum ResponseCode {

    /* ===============================
       000번대 - 공통 / 성공
       =============================== */
    SUCCESS(000),                  // 정상 응답

    /* ===============================
       100번대 - 요청 / 입력 관련 오류
       =============================== */
    BAD_REQUEST(100),              // 잘못된 요청
    INVALID_PARAMETER(101),        // 파라미터 형식 오류
    MISSING_PARAMETER(102),        // 필수 파라미터 누락
    UNSUPPORTED_METHOD(103),       // 허용되지 않은 HTTP 메서드
    ENDPOINT_NOT_FOUND(104),       // 엔드포인트를 찾을 수 없음
    RESOURCE_NOT_FOUND(105),       // 리소스를 찾을 수 없음
    UNSUPPORTED_MEDIA_TYPE(106),   // 잘못된 Content-Type
    PAYLOAD_TOO_LARGE(107),        // 업로드 용량 초과
    INVALID_FORMAT(108),           // JSON, 날짜 등 포맷 오류

    /* ===============================
       500번대 - 서버 / 내부 처리 오류
       =============================== */
    INTERNAL_SERVER_ERROR(500),    // 서버 내부 오류
    DATABASE_ERROR(501),           // DB 처리 오류
    DUPLICATE_KEY(502),            // 중복 데이터
    CONSTRAINT_VIOLATION(503),     // 제약 조건 위반
    IO_ERROR(504),                 // 입출력 처리 오류

    /* ===============================
       900번대 - 인증 / 인가 관련 오류
       =============================== */
    UNAUTHORIZED(900),             // 인증 필요
    INVALID_TOKEN(901),            // 토큰이 유효하지 않음
    EXPIRED_TOKEN(902),            // 토큰 만료
    ACCESS_DENIED(903),            // 접근 권한 없음
    AUTHENTICATION_FAILED(904),    // 인증 실패
    DUPLICATE_EMAIL(905);          // 중복 이메일

    private final int code;
}
