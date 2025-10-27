package com.matching.core.member.infra;

import com.matching.core.member.view.dto.MemberRole;
import com.matching.core.member.view.dto.MemberStatus;
import com.minisecutiry.member.infra.MiniMember;
import com.minisecutiry.member.social.MiniGoogleOAuthMemberDetails;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

@Getter
@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Member implements MiniMember {
    @Id
    @GeneratedValue
    private UUID id;

    @Column(nullable = false, unique = true)
    private String username;

    @Column(nullable = false)
    private String password;

    public void updatePassword(PasswordEncoder passwordEncoder, String password) {
        this.password = passwordEncoder.encode(password);
    }

    private String provider;
    private String email;
    private String name;

    @Builder.Default
    @Enumerated(EnumType.STRING)
    private MemberStatus status = MemberStatus.ACTIVE;

    public String getStatus() {
        return status.toString();
    }

    @ElementCollection(fetch = FetchType.EAGER)
    @CollectionTable(
            name = "member_roles",
            joinColumns = @JoinColumn(name = "member_id")
    )
    @Column(name = "role")
    @Enumerated(EnumType.STRING)
    private Set<MemberRole> roles;

    public void updateRoles(MemberRole role) {
        roles = Set.of(role);
    }

    public Set<String> getRoles() {
        return roles.stream().map(Enum::toString).collect(Collectors.toSet());
    }

    @Builder.Default
    private String picture = "https://tutor-s3.s3.ap-northeast-2.amazonaws.com/profile.jpg";
}
