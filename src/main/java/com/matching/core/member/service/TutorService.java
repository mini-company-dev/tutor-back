package com.matching.core.member.service;

import com.matching.core.member.infra.*;
import com.matching.core.member.view.dto.TutorRequest;
import com.matching.core.member.view.dto.TutorResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class TutorService {

    private final MemberRepository memberRepository;
    private final TutorRepository tutorRepository;
    private final SpecialtyRepository specialtyRepository;

    private Tutor findByMemberId(UUID memberId) {
        return tutorRepository.findByMember_Id(memberId).orElseGet(() -> {
            Member member = memberRepository.findById(memberId).orElseThrow();
            return Tutor.builder()
                    .member(member)
                    .build();
        });
    }

    @Transactional(readOnly = true)
    public List<TutorResponse.TutorFindAll> findAll() {
        List<Tutor> tutors = tutorRepository.findAll();
        return tutors.stream().map(TutorResponse.TutorFindAll::from).toList();
    }

    @Transactional
    public void update(UUID memberId, TutorRequest.UpdateTutor dto) {
        Tutor tutor = findByMemberId(memberId);
        tutor.updateProfile(
                dto.bioVideoUrl(),
                dto.shortBio(),
                dto.profileImageUrl(),
                dto.classStyleFileUrl(),
                dto.tags()
        );

        tutorRepository.save(tutor);
    }

    @Transactional
    public void addSpecialty(UUID memberId, TutorRequest.UpdateSpecialty dto) {
        Tutor tutor = findByMemberId(memberId);
        Specialty specialty = specialtyRepository.findById(dto.specialtyId()).orElseThrow();
        tutor.addSpecialty(specialty);
    }

    @Transactional
    public void removeSpecialty(UUID memberId, TutorRequest.UpdateSpecialty dto) {
        Tutor tutor = findByMemberId(memberId);
        tutor.removeSpecialty(dto.specialtyId());
    }
}
