package com.matching.core.test.infra;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.Comment;

import java.util.UUID;

@Getter
@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Answer {

    @Id
    @GeneratedValue
    private UUID id;

    private String content;
    private boolean correct;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "grammar_test_id")
    private GrammarTest grammarTest;
}
