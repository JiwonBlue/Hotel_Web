package everest.hotel.repository;

public class ReserveRepository {

}

// CREATE TABLE RESERVE_TABLE(
// RESERVE_CODE VARCHAR2(10) NOT NULL CONSTRAINT RESERVE_CODE_PK PRIMARY KEY,
// --예약CODE(PK)
// MEMBER_ID VARCHAR2(30) NOT NULL CONSTRAINT RESERVE_MEMBER_ID_FK REFERENCES
// MEMBER_TABLE(MEMBER_ID), --회원정보CODE(FK)
// ROOM_CODE VARCHAR2(10) NOT NULL CONSTRAINT RESERVE_ROOM_CODE_FK REFERENCES
// ROOM_TABLE(ROOM_CODE), --객실CODE(FK)
// RESERVE_START_DAY DATE NOT NULL, --이용시작일
// RESERVE_END_DAY DATE NOT NULL, --이용종료일
// RESERVE_COUNT NUMBER(10) NOT NULL --숙박인원
// );
// CREATE SEQUENCE RESERVE_TABLE_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;

// INSERT INTO RESERVE_TABLE VALUES('RESERVE'||RESERVE_TABLE_SEQ.NEXTVAL,
// 'P123@NAVER.COM', 'ROOM101', '2023-07-15', '2023-07-17', 3);
// INSERT INTO RESERVE_TABLE VALUES('RESERVE'||RESERVE_TABLE_SEQ.NEXTVAL,
// 'P123@NAVER.COM', 'ROOM102', '2023-07-15', '2023-07-17', 3);
// INSERT INTO RESERVE_TABLE VALUES('RESERVE'||RESERVE_TABLE_SEQ.NEXTVAL,
// 'T123@NAVER.COM', 'ROOM202', '2023-07-15', '2023-07-17', 3);
// INSERT INTO RESERVE_TABLE VALUES('RESERVE'||RESERVE_TABLE_SEQ.NEXTVAL,
// 'T123@NAVER.COM', 'ROOM203', '2023-07-15', '2023-07-17', 3);
// INSERT INTO RESERVE_TABLE VALUES('RESERVE'||RESERVE_TABLE_SEQ.NEXTVAL,
// 'Y123@NAVER.COM', 'ROOM302', '2023-07-15', '2023-07-17', 3);
// INSERT INTO RESERVE_TABLE VALUES('RESERVE'||RESERVE_TABLE_SEQ.NEXTVAL,
// 'Y123@NAVER.COM', 'ROOM303', '2023-07-15', '2023-07-17', 3);