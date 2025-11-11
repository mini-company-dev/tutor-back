package com.matching.core.test.infra;

import com.matching.core.test.view.Level;
import com.matching.core.test.view.TestType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.UUID;

public interface GrammarTestRepository extends JpaRepository<GrammarTest, UUID> {
    @Query(value = "SELECT gt FROM GrammarTest gt WHERE gt.level = :level AND gt.type = :type ORDER BY RANDOM()")
    List<GrammarTest> findByLevelAndType(@Param("level") Level level, @Param("type") TestType type);
}
