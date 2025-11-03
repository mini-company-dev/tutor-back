package com.matching.core.test.infra;

import com.matching.core.test.view.Level;
import com.matching.core.test.view.TestType;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.Comment;

import java.util.List;
import java.util.UUID;

@Getter
@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class GrammarTest {

    @Id
    @GeneratedValue
    private UUID id;

    private String problem;

    public void updateProblem(String problem) {
        this.problem = problem;
    }

    @OneToMany(mappedBy = "grammarTest", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Answer> answers;

    public void addAnswer(Answer answer) {
        answers.add(answer);
    }

    @Enumerated(EnumType.STRING)
    private Level level;

    public void updateLevel(Level level) {
        this.level = level;
    }

    @Enumerated(EnumType.STRING)
    private TestType type;

    public void updateType(TestType type) {
        this.type = type;
    }
}
