package com.matching.core.member.view.dto;

public class MemberRequest {
    public record MemberSave(
        String username,
        String password,
        String name
    ) {}
}
