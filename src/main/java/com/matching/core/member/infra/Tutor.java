package com.matching.core.member.infra;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.UUID;

@Getter
@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Tutor {
    @Id
    @GeneratedValue
    private UUID id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "member_id", nullable = false, updatable = false)
    private Member member;

    public Tutor(Member member) {
        this.member = member;
    }

    private String subject;           // 과목
    private String career;            // 경력 요약
    private String shortIntro;        // 한 줄 소개

    @Lob
    private String description;       // 상세 소개

    private String teachingStyle;     // 수업 방식 (온라인/오프라인)
    private String region;            // 지역

    private int pricePer25Min;
    private int pricePer50Min;

    @Builder.Default
    private int rating = 0;            // 평균 평점
    private String profileImageUrl;   // 프로필 이미지 URL

    private boolean isActive;

    public void updateProfile(String subject, String career, String shortIntro, String description,
                              String teachingStyle, String region, String profileImageUrl) {
        this.subject = subject;
        this.career = career;
        this.shortIntro = shortIntro;
        this.description = description;
        this.teachingStyle = teachingStyle;
        this.region = region;
        this.profileImageUrl = profileImageUrl;
    }

    public void updatePrice(int pricePer25Min, int pricePer50Min) {
        this.pricePer25Min = pricePer25Min;
        this.pricePer50Min = pricePer50Min;
    }

    public void updateRating(int rating) {
        this.rating = rating;
    }
}
