// package everest.hotel.repository;

// import java.util.List;

// import
// org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
// import org.springframework.data.domain.Page;
// import org.springframework.data.jpa.repository.JpaRepository;

// import everest.hotel.domain.Board;

// public interface BoardRepository extends JpaRepository<Board, String> {

// Board findBySeq(String seq);

// Page<Board> findByOrderBySeqDesc(Pageable pageable);

// }

// BOARD_CODE VARCHAR2(10) NOT NULL CONSTRAINT BOARD_CODE_PK PRIMARY KEY,
// --게시판코드(PK)

// BOARD_TITLE VARCHAR2(50) NOT NULL, --게시판제목

// BOARD_CONTENT VARCHAR2(1000) NOT NULL, --게시판내용

// MEMBER_ID VARCHAR2(30) NOT NULL CONSTRAINT BOARD_MEMBER_ID_FK REFERENCES
// MEMBER_TABLE(MEMBER_ID), --회원정보CODE(FK)

// BOARD_VIEW NUMBER(20), --게시판조회수
// BOARD_RDATE DATE NOT NULL, --게시판작성일
// BOARD_UDATE DATE NOT NULL --게시판수정일

// INSERT INTO

// BOARD_TABLE VALUES(BOARD_TABLE_SEQ.NEXTVAL, '제목이다', '내용이다',
// 'P123@NAVER.COM', 0, SYSDATE, SYSDATE);
// INSERT INTO

// BOARD_TABLE VALUES(BOARD_TABLE_SEQ.NEXTVAL, '이런제목', '이런내용',
// 'T123@NAVER.COM', 0, SYSDATE, SYSDATE);
// INSERT INTO

// BOARD_TABLE VALUES(BOARD_TABLE_SEQ.NEXTVAL, '저런제목', '저런내용',
// 'Y123@NAVER.COM', 0, SYSDATE, SYSDATE);
