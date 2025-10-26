package com.matching.core.member.view;

import com.matching.config.ApiResponse;
import com.matching.core.member.service.MemberService;
import com.matching.core.member.view.dto.MemberRequest;
import com.matching.core.member.view.dto.MemberRole;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/members")
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    @PostMapping
    public ApiResponse<Void> save(@RequestParam("role") MemberRole role, @RequestBody MemberRequest.MemberSave dto) {
        if(role.equals(MemberRole.ROLE_ADMIN)) throw new AccessDeniedException("접근 권한이 없음");
        memberService.save(role, dto);
        return ApiResponse.success();
    }
}
