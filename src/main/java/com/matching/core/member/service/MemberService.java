package com.matching.core.member.service;

import com.matching.core.member.infra.Member;
import com.matching.core.member.infra.MemberRepository;
import com.matching.core.member.view.dto.MemberRequest;
import com.matching.core.member.view.dto.MemberRole;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final PasswordEncoder passwordEncoder;
    private final MemberRepository memberRepository;

    @Transactional
    public void save(MemberRole role, MemberRequest.MemberSave dto) {
        Member member = Member.builder()
                .username(dto.username())
                .name(dto.name())
                .role(role)
                .build();

        member.updatePassword(passwordEncoder, dto.password());
        memberRepository.save(member);
    }
}
