package com.matching.core.member.infra;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Comment;

import java.util.List;
import java.util.UUID;

@Getter
@Entity
@Table(name = "tutor")
@Comment("튜터 정보를 저장하는 테이블")
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Tutor {

    @Id
    @GeneratedValue
    @Comment("고유 식별자")
    private UUID id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "member_id", nullable = false, updatable = false)
    @Comment("튜터 계정에 연결된 회원 정보 (Member)")
    private Member member;

    @Comment("튜터 자기소개 영상 URL")
    private String bioVideo;

    @Comment("튜터 한 줄 소개 문구")
    private String shortIntro;

    @Builder.Default
    @Column(nullable = false)
    @Comment("튜터 평균 평점 (0~5)")
    private int rating = 0;

    @Comment("튜터 프로필 이미지 URL")
    private String profileImageUrl;

    @Comment("튜터의 수업 스타일 설명 파일 경로 (PDF, 이미지 등)")
    private String classStyleFile;

    @Column(nullable = false)
    @Comment("튜터 계정 활성화 여부")
    private boolean isActive;

    @OneToMany(mappedBy = "tutor", cascade = CascadeType.REMOVE)
    @Comment("튜터가 등록한 전문분야(Specialty) 목록")
    private List<TutorSpecialty> specialties;

    @ElementCollection
    @CollectionTable(
            name = "tutor_tags",
            joinColumns = @JoinColumn(name = "tutor_id")
    )
    @Column(name = "tag", nullable = false)
    @Comment("튜터의 주요 태그 목록 (예: '친절함', '경력 10년', '온라인 가능' 등)")
    private List<String> tags;
}
