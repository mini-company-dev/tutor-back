package com.matching.security;

import com.matching.core.member.infra.Member;
import com.minisecutiry.member.model.MiniMemberDetails;

public class MemberDetails extends MiniMemberDetails {
    private Member member;

    public MemberDetails(Member member) {
        super(member);
    }

    public String getPicture() {
        return member.getPicture();
    }
}
