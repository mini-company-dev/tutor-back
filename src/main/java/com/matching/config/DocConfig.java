package com.matching.config;

import io.swagger.v3.oas.annotations.enums.SecuritySchemeType;
import io.swagger.v3.oas.annotations.security.SecurityScheme;
import org.springframework.context.annotation.Configuration;

@Configuration
@SecurityScheme(
        name = "bearerAuth",               // 이름은 나중에 @SecurityRequirement에서 참조
        type = SecuritySchemeType.HTTP,    // HTTP 인증 방식
        bearerFormat = "JWT",              // JWT 형식 명시
        scheme = "bearer"                  // Bearer 토큰 방식
)
public class DocConfig {
}
