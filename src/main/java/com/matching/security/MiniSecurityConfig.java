package com.matching.security;

import com.matching.core.member.infra.MemberRepository;
import com.minisecutiry.member.service.MemberDetailsService;
import com.minisecutiry.member.service.OAuthMemberDetailsService;
import com.minisecutiry.member.service.OAuthMemberSaver;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;

@Configuration
@RequiredArgsConstructor
public class MiniSecurityConfig {

    private final MemberRepository memberRepository;

    @Bean
    public UserDetailsService userDetailsService() {
        return new MemberDetailsService(memberRepository);
    }

    @Bean
    public DefaultOAuth2UserService DefaultOAuth2UserService(OAuthMemberSaver memberSaver) {
        return new OAuthMemberDetailsService(memberRepository, memberSaver);
    }
}
