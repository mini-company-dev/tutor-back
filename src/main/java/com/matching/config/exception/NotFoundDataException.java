package com.matching.config.exception;

/**
 * 요청한 데이터를 찾지 못했을 때 발생하는 예외 클래스입니다.
 * 주로 리소스가 존재하지 않거나 삭제된 경우에 사용됩니다.
 */
public class NotFoundDataException extends MiniRuntimeException{
    public NotFoundDataException(String message, ResponseCode code) {
        super(message, code);
    }

    public NotFoundDataException(String message) {
        super(message, ResponseCode.RESOURCE_NOT_FOUND);
    }
}