package com.matching.core.member.view.dto;

import com.matching.core.member.infra.Tutor;
import lombok.Builder;

import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

public class TutorResponse {
    @Builder
    public record TutorFindAll(
            UUID id,
            String name,
            String bioVideoUrl,
            String shortBio,
            int rating,
            String picture,
            String classStyleFileUrl,
            boolean isActive,
            Set<String> specialties,
            Set<String> tags

    ) {
        public static TutorFindAll from(Tutor tutor) {
            return TutorFindAll.builder()
                    .id(tutor.getId())
                    .name(tutor.getMember().getName())
                    .bioVideoUrl(tutor.getBioVideoUrl())
                    .shortBio(tutor.getShortBio())
                    .rating(tutor.getRating())
                    .picture(tutor.getMember().getPicture())
                    .classStyleFileUrl(tutor.getClassStyleFileUrl())
                    .isActive(tutor.isActive())
                    .specialties(tutor.getSpecialties().stream().map(tutorSpecialty -> tutorSpecialty.getSpecialty().getName()).collect(Collectors.toSet()))
                    .tags(tutor.getTags())
                    .build();
        }
    }
}

