package everest.hotel.service;

import java.sql.Date;

import everest.hotel.domain.Member;

public interface MemberService {

    Member registerMember(String member_id, String member_pwd, String member_name, String member_phone,
            Date member_birthday, String member_in_out);

    // 특정 회원 정보 조회
    Member getMemberInfo(String member_id);

    // 회원 정보 수정
    Member updateMemberInfo(String member_id, String member_name, String member_phone, Date member_birthday);

    // 회원 정보 삭제
    boolean deleteMember(String member_id);

    // 회원 로그인 처리
    boolean loginMember(String member_id, String member_pwd);

}
