package com.matching.core.member.view;

import com.matching.core.member.service.TutorService;
import com.matching.core.member.view.dto.TutorRequest;
import com.matching.core.member.view.dto.TutorResponse;
import com.minisecutiry.member.model.MiniMemberDetails;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/tutors")
@RequiredArgsConstructor
@PreAuthorize("hasAnyRole('TUTOR', 'ADMIN')")
@SecurityRequirement(name = "bearerAuth")
public class TutorController {

    private final TutorService tutorService;

    @GetMapping
    public List<TutorResponse.TutorFindAll> findAll() {
        return tutorService.findAll();
    }

    @PutMapping
    public void update(@AuthenticationPrincipal MiniMemberDetails memberDetails, @RequestBody TutorRequest.UpdateTutor dto) {
        tutorService.update(memberDetails.getId(), dto);
    }

    @PostMapping("/specialty")
    public void addSpecialty(@AuthenticationPrincipal MiniMemberDetails memberDetails, @RequestBody TutorRequest.UpdateSpecialty dto) {
        tutorService.addSpecialty(memberDetails.getId(), dto);
    }

    @DeleteMapping("/specialty")
    public void removeSpecialty(@AuthenticationPrincipal MiniMemberDetails memberDetails, @RequestBody TutorRequest.UpdateSpecialty dto) {
        tutorService.removeSpecialty(memberDetails.getId(), dto);
    }
}
