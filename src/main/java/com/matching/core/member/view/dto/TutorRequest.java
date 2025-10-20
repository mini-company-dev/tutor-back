package com.matching.core.member.view.dto;

import jakarta.persistence.Lob;

public class TutorRequest {
    public record UpdateTutor(
            String subject,           // 과목
            String career,            // 경력 요약
            String shortIntro,        // 한 줄 소개

            @Lob
            String description,       // 상세 소개

            String teachingStyle,     // 수업 방식 (온라인/오프라인)
            String region,            // 지역

            double rating,            // 평균 평점
            String profileImageUrl    // 프로필 이미지 URL
    ) {}

}
