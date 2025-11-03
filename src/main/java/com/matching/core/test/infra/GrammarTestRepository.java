package com.matching.core.test.infra;

import com.matching.core.test.view.Level;
import com.matching.core.test.view.TestType;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.UUID;

public interface GrammarTestRepository extends JpaRepository<GrammarTest, UUID> {
    List<GrammarTest> findByLevelAndType(Level level, TestType type);
}
