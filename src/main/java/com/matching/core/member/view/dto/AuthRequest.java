package com.matching.core.member.view.dto;

public class AuthRequest {
    public record Login(
            String username,
            String password
    ) {}
}
