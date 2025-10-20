package com.matching.core.member.service;

import com.matching.core.member.infra.Member;
import com.matching.core.member.infra.MemberRepository;
import com.matching.core.member.infra.Tutor;
import com.matching.core.member.infra.TutorRepository;
import com.matching.core.member.view.dto.TutorRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Service
@RequiredArgsConstructor
public class TutorService {

    private final MemberRepository memberRepository;
    private final TutorRepository tutorRepository;

    @Transactional
    public void update(UUID memberId, TutorRequest.UpdateTutor dto) {
        Tutor tutor = tutorRepository.findByMember_Id(memberId).orElseGet(() -> {
            Member member = memberRepository.findById(memberId).orElseThrow();
            return new Tutor(member);
        });

        tutor.updateProfile(
                dto.subject(),
                dto.career(),
                dto.shortIntro(),
                dto.description(),
                dto.teachingStyle(),
                dto.region(),
                dto.profileImageUrl()
        );

        tutorRepository.save(tutor);
    }
}
