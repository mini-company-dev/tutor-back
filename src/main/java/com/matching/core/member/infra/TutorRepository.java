package com.matching.core.member.infra;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;
import java.util.UUID;

public interface TutorRepository extends JpaRepository<Tutor, UUID> {
    Optional<Tutor> findByMember_Id(UUID memberId);
}
