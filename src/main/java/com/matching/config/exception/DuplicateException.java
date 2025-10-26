package com.matching.config.exception;

/**
 * 리소스가 중복되어 요청을 처리할 수 없는 경우 발생하는 예외입니다.
 * 주로 이미 존재하는 데이터(예: 중복된 사용자 ID나 이메일 등)로 인해 처리가 불가능할 때 사용됩니다.
 * HTTP 상태 코드 409 (Conflict)에 대응합니다.
 */
public class DuplicateException extends MiniRuntimeException {
    public DuplicateException(String message, ResponseCode code) {
        super(message, code);
    }
}