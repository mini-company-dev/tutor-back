package com.matching.core.member.service;

import com.matching.config.exception.ResponseCode;
import com.matching.config.exception.NotFoundDataException;
import com.matching.core.member.infra.Member;
import com.matching.core.member.infra.MemberRepository;
import com.matching.core.member.view.dto.AuthRequest;
import com.minisecutiry.member.model.MiniMemberDetails;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class AuthService {

    private final MemberRepository memberRepository;
    private final PasswordEncoder passwordEncoder;

    @Transactional(readOnly = true)
    public MiniMemberDetails login(AuthRequest.Login dto) {
        Member member = memberRepository.findByUsername(dto.username())
                .orElseThrow(() -> new NotFoundDataException("인증 실패", ResponseCode.AUTHENTICATION_FAILED));
        if(!passwordEncoder.matches(dto.password(), member.getPassword())) {
            throw new NotFoundDataException("인증 실패", ResponseCode.AUTHENTICATION_FAILED);
        }
        return new MiniMemberDetails(member);
    }
}
