
package everest.hotel.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import everest.hotel.domain.Member;

public interface MemberRepository extends JpaRepository<Member, String> {

    // 특정ID 회원정보 조회
    Member findByMemberId(String memberId);

    // 회원 로그인 처리
    Member findByMemberIdAndMemberPwd(String memberId, String memberPwd);

    // List<Member> findAllMember();

}

// MEMBER_ID VARCHAR(30) NOT NULL CONSTRAINT MEMBER_ID_PK PRIMARY KEY,
// --회원정보CODE(PK)
// MEMBER_PWD VARCHAR(30) NOT NULL, --비밀번호
// MEMBER_NAME VARCHAR(10) NOT NULL, --이름
// MEMBER_PHONE VARCHAR(20) NOT NULL, --연락처
// MEMBER_BIRTHDAY DATE NOT NULL, --생년월일
// MEMBER_IN_OUT VARCHAR(10) NOT NULL --내/외국인

// INSERT INTO MEMBER_TABLE VALUES('P123@NAVER.COM', 'U12345', '엄용민',
// '010-9999-9888', '1999-06-28', '내국인');
// INSERT INTO MEMBER_TABLE VALUES('T123@NAVER.COM', 'J12345', '조영태',
// '010-7799-8787', '1966-09-28', '내국인');
// INSERT INTO MEMBER_TABLE VALUES('Y123@NAVER.COM', 'S12345', '강찬성',
// '010-6663-8558', '1970-05-22', '내국인');