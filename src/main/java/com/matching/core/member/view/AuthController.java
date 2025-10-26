package com.matching.core.member.view;

import com.matching.config.ApiResponse;
import com.matching.core.member.service.AuthService;
import com.matching.core.member.view.dto.AuthRequest;
import com.minisecutiry.filter.SuccessHandler;
import com.minisecutiry.member.model.MiniMemberDetails;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
public class AuthController {

    private final AuthService authService;
    private final SuccessHandler successHandler;

    @PostMapping("/login")
    public ApiResponse<Void> login(@RequestBody AuthRequest.Login dto, HttpServletRequest request, HttpServletResponse response) {
        MiniMemberDetails miniMemberDetails = authService.login(dto);
        successHandler.successHandler(request, response, miniMemberDetails);
        return ApiResponse.success();
    }
}
