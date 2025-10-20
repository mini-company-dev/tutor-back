package com.matching.core.member.infra;

import com.minisecutiry.member.infra.MiniMember;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Getter
@Entity
@SuperBuilder
@NoArgsConstructor
public class Member extends MiniMember {
    public Member(MiniMember miniMember) {
        super(miniMember);
    }
}
