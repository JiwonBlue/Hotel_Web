package everest.hotel.service;

import java.sql.Date;

public interface MemberService {

    Member registerMember(String member_id, String member_pwd, String member_name, String member_phone,
            Date member_birthday, String member_in_out);

    // 특정 회원 정보를 조회하는 메서드
    Member getMemberInfo(String member_id);

}
