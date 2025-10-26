package com.matching.config.exception;

/**
 * 인증은 되었으나 해당 리소스에 대한 접근 권한이 없는 경우 발생하는 예외입니다.
 * 주로 권한 부족으로 인한 접근 거부 상황에 사용됩니다.
 */
public class ForbiddenException extends MiniRuntimeException {
    public ForbiddenException(String message, ResponseCode code) {
        super(message, code);
    }
}