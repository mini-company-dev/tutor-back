package com.matching.core.member.view;

import com.matching.config.ApiResponse;
import com.matching.core.member.service.MemberService;
import com.matching.core.member.view.dto.MemberRequest;
import com.matching.core.member.view.dto.MemberRole;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/members")
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    @PostMapping
    public ResponseEntity<ApiResponse<Void>> save(@RequestParam("role") MemberRole role, @RequestBody MemberRequest.MemberSave dto) {
        memberService.save(role, dto);
        return ApiResponse.success().toResponseEntity(HttpStatus.OK);
    }
}
