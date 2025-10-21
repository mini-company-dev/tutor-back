package com.matching.core.member.infra;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Comment;

import java.util.UUID;

@Getter
@Entity
@Table(name = "specialty")
@Comment("튜터의 전문분야 정보를 저장하는 테이블")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Specialty {

    @Id
    @GeneratedValue
    @Comment("고유 식별자")
    private UUID id;

    @Column(nullable = false, length = 100)
    @Comment("전문분야 이름 (예: 수학, 영어, 코딩 등)")
    private String name;
}
