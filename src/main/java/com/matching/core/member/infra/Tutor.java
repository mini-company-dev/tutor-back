package com.matching.core.member.infra;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Comment;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
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
    private String bioVideoUrl;

    @Comment("튜터 한 줄 소개 문구")
    private String shortBio;

    @Builder.Default
    @Column(nullable = false)
    @Comment("튜터 평균 평점 (0~5)")
    private int rating = 0;

    @Comment("튜터의 수업 스타일 설명 파일 경로 (PDF, 이미지 등)")
    private String classStyleFileUrl;

    @Column(nullable = false)
    @Comment("튜터 계정 활성화 여부")
    private boolean isActive;

    @OneToMany(mappedBy = "tutor", cascade = CascadeType.REMOVE)
    @Comment("튜터가 등록한 전문분야(Specialty) 목록")
    private Set<TutorSpecialty> specialties;

    public void addSpecialty(Specialty specialty) {
        boolean exists = specialties.stream()
                .anyMatch(ts -> ts.getSpecialty().getId().equals(specialty.getId()));

        if (!exists) {
            TutorSpecialty tutorSpecialty = TutorSpecialty.builder()
                    .tutor(this)
                    .specialty(specialty)
                    .build();
            specialties.add(tutorSpecialty);
        }
    }

    public void removeSpecialty(UUID specialtyId) {
        specialties.removeIf(ts -> ts.getSpecialty().getId().equals(specialtyId));
    }

    @ElementCollection
    @CollectionTable(
            name = "tutor_tags",
            joinColumns = @JoinColumn(name = "tutor_id")
    )
    @Column(name = "tag", nullable = false)
    @Comment("튜터의 주요 태그 목록")
    private Set<String> tags;

    public void updateProfile(String bioVideoUrl,
                              String shortBio,
                              String classStyleFileUrl,
                              Set<String> tags) {
        this.bioVideoUrl = bioVideoUrl;
        this.shortBio = shortBio;
        this.classStyleFileUrl = classStyleFileUrl;
        this.tags = tags;
    }

    @Builder.Default
    @OneToMany(mappedBy = "tutor", cascade = CascadeType.ALL, orphanRemoval = true)
    @Comment("튜터가 담당하는 학생 목록")
    List<Student> students = new ArrayList<>();

    public void addStudent(Student student) {
        students.add(student);
    }
}
