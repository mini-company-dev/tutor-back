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
import java.util.stream.Collectors;

@Component
public class CustomJwtProvider extends JwtProvider {
    @Override
    public MiniMember buildMiniMember(Claims claims) {
        UUID id = UUID.fromString(claims.getSubject());

        @SuppressWarnings("unchecked")
        List<String> roleStrings = (List<String>) claims.get("roles", List.class);

        Set<MemberRole> roles = roleStrings == null ?
                Collections.emptySet() :
                roleStrings.stream()
                        .map(MemberRole::valueOf)
                        .collect(Collectors.toSet());

        return Member.builder()
                        .id(id)
                        .username(claims.get("username", String.class))
                        .name(claims.get("name", String.class))
                        .roles(roles)
                        .build();
    }

    @Override
    public Claims buildClaim(MiniMemberDetails miniMemberDetails) {
        Claims claims = Jwts.claims().setSubject(String.valueOf(miniMemberDetails.getId()));

        claims.put("username", miniMemberDetails.getUsername());
        claims.put("name", miniMemberDetails.getName());

        Set<String> roles = miniMemberDetails.getAuthorities().stream()
                .map(GrantedAuthority::getAuthority)
                .filter(Objects::nonNull)
                .collect(Collectors.toUnmodifiableSet());

        if (!roles.isEmpty()) {
            claims.put("roles", roles);
        }

        return claims;
    }
}
