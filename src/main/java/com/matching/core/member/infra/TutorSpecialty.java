package com.matching.core.member.infra;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Comment;

import java.util.UUID;

@Entity
@Table(name = "tutor_specialty")
@Comment("튜터와 전문분야 간의 연결 정보를 저장하는 테이블 (N:N 관계 매핑용)")
@Builder
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class TutorSpecialty {

    @Id
    @GeneratedValue
    @Comment("고유 식별자")
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "specialty_id", nullable = false)
    @Comment("전문분야 식별자 (Specialty 참조)")
    private Specialty specialty;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tutor_id", nullable = false)
    @Comment("튜터 식별자 (Tutor 참조)")
    private Tutor tutor;
}
