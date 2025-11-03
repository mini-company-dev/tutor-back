package com.matching.core.test.view;

import java.util.List;

public class GrammarTestRequest {
    public record GrammarTestSave(
            String problem,
            Level level,
            TestType type,
            List<AnswersSave> answers
    ) {}

    public record AnswersSave(
            String content,
            boolean correct
    ) {}
}
