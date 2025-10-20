package com.matching.security;

import com.matching.core.member.infra.Member;
import com.matching.core.member.infra.MemberRepository;
import com.matching.core.member.view.dto.MemberRole;
import com.minisecutiry.member.infra.MiniMember;
import com.minisecutiry.member.service.OAuthMemberSaver;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
@RequiredArgsConstructor
public class MiniMemberSaver implements OAuthMemberSaver {

    private final MemberRepository memberRepository;
    private final PasswordEncoder passwordEncoder;

    @Override
    public void save(MiniMember miniMember) {
        Member member = new Member(miniMember);
        member.updatePassword(UUID.randomUUID().toString(), passwordEncoder);
        member.addRole(MemberRole.ROLE_STUDENT.name());
        memberRepository.save(member);
    }
}
