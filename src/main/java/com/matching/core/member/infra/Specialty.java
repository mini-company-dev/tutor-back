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
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Specialty {

    @Id
    @GeneratedValue
    private UUID id;

    @Column(nullable = false, length = 100)
    private String name;
}
