package com.matching.core.test.service;

import com.matching.core.test.infra.*;
import com.matching.core.test.view.GrammarTestRequest;
import com.matching.core.test.view.GrammarTestResponse;
import com.matching.core.test.view.Level;
import com.matching.core.test.view.TestType;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional
public class GrammarTestService {

    private final GrammarTestRepository grammarTestRepository;

    public GrammarTestResponse.GrammarTestGet save(GrammarTestRequest.GrammarTestSave request) {
        GrammarTest test = GrammarTest.builder()
                .problem(request.problem())
                .level(request.level())
                .build();

        request.answers().forEach(answerReq -> {
            Answer answer = Answer.builder()
                    .content(answerReq.content())
                    .correct(answerReq.correct())
                    .build();
            test.addAnswer(answer);
        });

        GrammarTest saved = grammarTestRepository.save(test);
        return GrammarTestResponse.GrammarTestGet.from(saved);
    }

    public GrammarTestResponse.GrammarTestGet get(UUID id) {
        GrammarTest test = grammarTestRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("문제를 찾을 수 없습니다. id=" + id));

        return GrammarTestResponse.GrammarTestGet.from(test);
    }

    public List<GrammarTestResponse.GrammarTestGet> getByLevel(Level level, TestType type) {
        return grammarTestRepository.findByLevelAndType(level, type).stream()
                .map(GrammarTestResponse.GrammarTestGet::from)
                .toList();
    }

    public GrammarTestResponse.GrammarTestGet update(UUID id, String newProblem) {
        GrammarTest test = grammarTestRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("문제를 찾을 수 없습니다. id=" + id));
        test.updateProblem(newProblem);

        return GrammarTestResponse.GrammarTestGet.from(test);
    }

    public void delete(UUID id) {
        grammarTestRepository.deleteById(id);
    }
}
