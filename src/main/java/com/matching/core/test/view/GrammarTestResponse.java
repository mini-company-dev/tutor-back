package com.matching.core.test.view;

import com.matching.core.test.infra.GrammarTest;
import lombok.Builder;

import java.util.List;
import java.util.UUID;

public class GrammarTestResponse {
    @Builder
    public record GrammarTestGet(
            UUID id,
            String problem,
            Level level,
            TestType type,
            List<AnswersGet> answers
    ) {
        public static GrammarTestGet from(GrammarTest grammarTest) {
            List<AnswersGet> answers = grammarTest.getAnswers().stream()
                    .map(answer -> AnswersGet.builder()
                            .id(answer.getId())
                            .content(answer.getContent())
                            .correct(answer.isCorrect())
                            .build()
                    )
                    .toList();

            return GrammarTestGet.builder()
                    .id(grammarTest.getId())
                    .problem(grammarTest.getProblem())
                    .level(grammarTest.getLevel())
                    .type(grammarTest.getType())
                    .answers(answers)
                    .build();
        }

    }

    @Builder
    public record AnswersGet(
            UUID id,
            String content,
            boolean correct
    ) {}
}
