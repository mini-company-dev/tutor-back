package com.matching.core.test.view;

import com.matching.config.ApiResponse;
import com.matching.core.test.service.GrammarTestService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/tests")
@RequiredArgsConstructor
public class GrammarTestController {

    private final GrammarTestService grammarTestService;

    @PostMapping
    public ApiResponse<GrammarTestResponse.GrammarTestGet> createTest(
            @RequestBody GrammarTestRequest.GrammarTestSave request
    ) {
        var response = grammarTestService.save(request);
        return ApiResponse.success(response);
    }

    @GetMapping("/{id}")
    public ApiResponse<GrammarTestResponse.GrammarTestGet> getTest(
            @PathVariable UUID id
    ) {
        var response = grammarTestService.get(id);
        return ApiResponse.success(response);
    }

    @GetMapping
    public ApiResponse<List<GrammarTestResponse.GrammarTestGet>> getTestsByLevel(
            @RequestParam Level level,
            @RequestParam TestType type
    ) {
        var responses = grammarTestService.getByLevel(level, type);
        return ApiResponse.success(responses);
    }

    @PatchMapping("/{id}")
    public ApiResponse<GrammarTestResponse.GrammarTestGet> updateProblem(
            @PathVariable UUID id,
            @RequestParam String problem
    ) {
        var response = grammarTestService.update(id, problem);
        return ApiResponse.success(response);
    }

    @DeleteMapping("/{id}")
    public ApiResponse<Void> deleteTest(@PathVariable UUID id) {
        grammarTestService.delete(id);
        return ApiResponse.success();
    }
}
