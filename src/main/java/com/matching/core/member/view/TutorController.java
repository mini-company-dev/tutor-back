package com.matching.core.member.view;

import com.matching.core.member.service.TutorService;
import com.matching.core.member.view.dto.TutorRequest;
import com.minisecutiry.member.model.MiniMemberDetails;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/tutors")
@RequiredArgsConstructor
public class TutorController {

    private final TutorService tutorService;

    @PutMapping
    public void update(@AuthenticationPrincipal MiniMemberDetails memberDetails, @RequestBody TutorRequest.UpdateTutor dto) {
        tutorService.update(memberDetails.getId(), dto);
    }
}
