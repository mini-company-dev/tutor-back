package com.matching.core.member.service;

import com.matching.core.member.infra.Member;
import com.matching.core.member.infra.MemberRepository;
import com.matching.core.member.view.dto.MemberRole;
import com.minisecutiry.member.model.MiniMemberDetails;
import com.minisecutiry.member.social.MiniGoogleOAuthMemberDetails;
import com.minisecutiry.member.social.MiniOAuthMemberDetails;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Set;
import java.util.UUID;

@Slf4j
@Service
@RequiredArgsConstructor
public class OAuthMemberDetailsService extends DefaultOAuth2UserService {
    private final MemberRepository memberRepository;
    private final PasswordEncoder passwordEncoder;

    @Override
    @Transactional
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
        OAuth2User oAuth2User = super.loadUser(userRequest);
        log.info("getAttributes : {}",oAuth2User.getAttributes());

        String provider = userRequest.getClientRegistration().getRegistrationId();

        MiniOAuthMemberDetails memberDetails = getMemberDetails(oAuth2User, provider);

        String providerId = memberDetails.getProviderId();
        String email = memberDetails.getEmail();
        String loginId = provider + "_" + providerId;
        String name = memberDetails.getName();
        String picture = memberDetails.getPicture();

        Member member = memberRepository.findByUsername(loginId).orElseGet(() -> {
            Member savedMember = Member.builder()
                    .username(loginId)
                    .name(name)
                    .email(email)
                    .provider(provider)
                    .picture(picture)
                    .roles(Set.of(MemberRole.ROLE_STUDENT))
                    .build();
            savedMember.updatePassword(passwordEncoder, UUID.randomUUID().toString());
            memberRepository.save(savedMember);
            return savedMember;
        });

        return new MiniMemberDetails(member);
    }

    private MiniOAuthMemberDetails getMemberDetails(OAuth2User oAuth2User, String provider) {
        if(provider.equals("google")){
            log.info("Google Login Event");
            return new MiniGoogleOAuthMemberDetails(oAuth2User.getAttributes());
        }
        throw new RuntimeException("Error");
    }

}
