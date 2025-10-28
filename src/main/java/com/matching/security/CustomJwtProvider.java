package com.matching.security;

import com.matching.core.member.infra.Member;
import com.matching.core.member.view.dto.MemberRole;
import com.minisecutiry.config.jwt.JwtProvider;
import com.minisecutiry.member.infra.MiniMember;
import com.minisecutiry.member.model.MiniMemberDetails;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.*;

@Component
public class CustomJwtProvider extends JwtProvider {
    @Override
    public MiniMember buildMiniMember(Claims claims) {
        UUID id = UUID.fromString(claims.getSubject());
        return Member.builder()
                        .id(id)
                        .username(claims.get("username", String.class))
                        .name(claims.get("name", String.class))
                        .picture(claims.get("picture", String.class))
                        .role(claims.get("role", MemberRole.class))
                        .build();
    }

    @Override
    public Claims buildClaim(MiniMemberDetails miniMemberDetails) {
        Claims claims = Jwts.claims().setSubject(String.valueOf(miniMemberDetails.getId()));

        claims.put("username", miniMemberDetails.getUsername());
        claims.put("name", miniMemberDetails.getName());
        claims.put("picture", miniMemberDetails.getPicture());
        claims.put("role", miniMemberDetails.getAuthorities()
                .stream()
                .findFirst()
                .map(GrantedAuthority::getAuthority)
                .orElse(null));

        return claims;
    }
}
