package everest.hotel.service;

import java.sql.Date;
import java.util.List;

import everest.hotel.domain.Member;

public interface MemberService {

    // 회원 등록(회원가입)
    Member joinMember(Member member);

    // 특정 회원정보 조회
    Member getMemberInfo(String memberId);

    // 회원정보 수정
    Member updateMemberInfo(String memberId, String memberName, String memberPhone, Date memberBirthday);

    // 회원정보 삭제
    void deleteMember(String memberId);

    // 회원 로그인
    Member loginMember(String memberId, String memberPwd);

}
