package com.matching.core.member.view.dto;

import java.util.Set;
import java.util.UUID;

public class TutorRequest {
    public record UpdateTutor(
            String bioVideoUrl,
            String shortBio,
            String profileImageUrl,
            String classStyleFileUrl,
            Set<String> tags
    ) {}

    public record UpdateSpecialty(
            UUID specialtyId
    ) {}

}
