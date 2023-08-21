--계정 생성
conn sys/java1234 as sysdba;
alter session set "_oracle_script"=true;
drop user everest cascade;

create user everest identified by everest123;
grant connect, resource, unlimited tablespace to everest;
conn everest/everest123;

set line 200;
set pagesize 20;

drop table pay_table;
drop table file_table;
drop table comment_table;
drop table board_table;
drop table reserve_table;
drop table member_table;
drop table room_table;
drop table admin_table;

purge recyclebin;

--table 생성
CREATE TABLE ADMIN_TABLE(
	ADMIN_ID VARCHAR2(10) NOT NULL constraint ADMIN_ID_PK primary key, --어드민코드(아이디)(PK)
	ADMIN_NAME VARCHAR2(10) NOT NULL, --어드민이름
	ADMIN_PWD VARCHAR2(10) NOT NULL --어드민비밀번호
);
create sequence ADMIN_TABLE_SEQ start with 1 increment by 1 nocache;

CREATE TABLE ROOM_TABLE(
	ROOM_CODE VARCHAR2(10) NOT NULL constraint ROOM_CODE_PK primary key, --객실코드(PK)
	ROOM_TYPE VARCHAR2(10) NOT NULL, --객실타입
	ROOM_SIZE VARCHAR2(10) NOT NULL, --객실면적
	ROOM_COUNT NUMBER(10) NOT NULL, --객실정원
	ROOM_INFO VARCHAR(40) NOT NULL, --객실정보
	ROOM_PRICE NUMBER(10) NOT NULL --객실가격
);
--create sequence ROOM_TABLE_SEQ start with 101 increment by 1 nocache;

CREATE TABLE MEMBER_TABLE(
	MEMBER_ID VARCHAR(30) NOT NULL constraint MEMBER_ID_PK primary key, --회원정보code(PK)
	MEMBER_PWD VARCHAR(30) NOT NULL, --비밀번호
	MEMBER_NAME VARCHAR(10) NOT NULL, --이름
	MEMBER_PHONE VARCHAR(20) NOT NULL, --연락처
	MEMBER_BIRTHDAY DATE NOT NULL, --생년월일
	MEMBER_IN_OUT VARCHAR(10) NOT NULL --내/외국인
);

CREATE TABLE RESERVE_TABLE(
	RESERVE_CODE VARCHAR2(10) NOT NULL constraint RESERVE_CODE_pk primary key, --예약code(PK)
	MEMBER_ID VARCHAR2(30) NOT NULL constraint RESERVE_MEMBER_ID_FK references MEMBER_TABLE(MEMBER_ID), --회원정보code(FK)
	ROOM_CODE VARCHAR2(10) NOT NULL constraint RESERVE_ROOM_CODE_FK references ROOM_TABLE(ROOM_CODE), --객실code(FK)
	RESERVE_START_DAY DATE NOT NULL, --이용시작일
	RESERVE_END_DAY DATE NOT NULL, --이용종료일
	RESERVE_COUNT NUMBER(10) NOT NULL --숙박인원
);
create sequence RESERVE_TABLE_SEQ start with 1 increment by 1 nocache;

CREATE TABLE BOARD_TABLE(
	BOARD_CODE VARCHAR2(10) NOT NULL constraint BOARD_CODE_PK primary key, --게시판코드(PK)
	BOARD_TITLE VARCHAR2(50) NOT NULL, --게시판제목
	BOARD_CONTENT VARCHAR2(1000) NOT NULL, --게시판내용
	MEMBER_ID VARCHAR2(30) NOT NULL constraint BOARD_MEMBER_ID_FK references MEMBER_TABLE(MEMBER_ID), --회원정보code(FK)
	BOARD_VIEW NUMBER(20), --게시판조회수
	BOARD_RDATE DATE NOT NULL, --게시판작성일
	BOARD_UDATE DATE NOT NULL --게시판수정일
);
create sequence BOARD_TABLE_SEQ start with 1 increment by 1 nocache;

CREATE TABLE COMMENT_TABLE(
	COMMENT_CODE VARCHAR2(10) NOT NULL constraint COMMENT_CODE_PK primary key, --댓글코드(PK)
	RECOMMENT_CODE VARCHAR2(10) NOT NULL constraint RECOMMENT_COMMENT_CODE_FK references COMMENT_TABLE(COMMENT_CODE), --대댓글코드(FK)
	COMMENT_CONTENT VARCHAR2(500) NOT NULL, --댓글내용
	COMMENT_RDATE DATE NOT NULL, --댓글작성날짜
	MEMBER_ID VARCHAR2(30) NOT NULL constraint COMMENT_MEMBER_ID_FK references MEMBER_TABLE(MEMBER_ID), --회원(FK)
	BOARD_CODE VARCHAR2(10) NOT NULL constraint COMMENT_BOARD_CODE_FK references BOARD_TABLE(BOARD_CODE) --게시판(FK)
);
create sequence COMMENT_TABLE_SEQ start with 1 increment by 1 nocache;

CREATE TABLE FILE_table(
	FILE_CODE VARCHAR2(10) NOT NULL constraint FILE_CODE primary key, 
	FILE_OGNAME VARCHAR(50) NOT NULL,
	FILE_SAVENAME VARCHAR(100) NOT NULL, 
	FILE_SAVEPATH VARCHAR(50) NOT NULL, 
	FILE_SIZE VARCHAR(50) NOT NULL,
	BOARD_code VARCHAR2(10) NOT NULL constraint FILE_BOARD_CODE_FK references BOARD_TABLE(BOARD_CODE) --게시판(FK)
);
create sequence FILE_TABLE_SEQ start with 1 increment by 1 nocache;


CREATE TABLE PAY_TABLE(
	PAY_CODE VARCHAR2(10) NOT NULL constraint PAY_CODE primary key, --결제code(PK)
	RESERVE_CODE VARCHAR(10) NOT NULL constraint PAY_RESERVE_CODE_FK references RESERVE_TABLE(RESERVE_CODE), --예약code(FK)
	PAY_MONEY NUMBER(20) NOT NULL, --결제금액
	PAY_WHAT VARCHAR(10) NOT NULL, --결제수단
	PAY_BANK VARCHAR(10) NOT NULL, --결제은행
	PAY_DAY DATE NOT NULL --결제일시
);
create sequence PAY_TABLE_SEQ start with 1 increment by 1 nocache;


--insert
insert into ADMIN_TABLE values('admin'||ADMIN_TABLE_SEQ.nextval, '김지원', 'kim123');
insert into ADMIN_TABLE values('admin'||ADMIN_TABLE_SEQ.nextval, '조영태', 'jo123');
insert into ADMIN_TABLE values('admin'||ADMIN_TABLE_SEQ.nextval, '양현주', 'y123');
insert into ADMIN_TABLE values('admin'||ADMIN_TABLE_SEQ.nextval, '신용빈', 'sin123');

insert into ROOM_TABLE values('room101', 'standard', '20평', 4, '55인치TV', 200000);
insert into ROOM_TABLE values('room102', 'standard', '20평', 4, '55인치TV', 200000);
insert into ROOM_TABLE values('room103', 'standard', '20평', 4, '55인치TV', 200000);
insert into ROOM_TABLE values('room201', 'deluxe', '30평', 6, '70인치TV, 욕조', 300000);
insert into ROOM_TABLE values('room202', 'deluxe', '30평', 6, '70인치TV, 욕조', 300000);
insert into ROOM_TABLE values('room203', 'deluxe', '30평', 6, '70인치TV, 욕조', 300000);
insert into ROOM_TABLE values('room301', 'suite', '40평', 8, '79인치TV, 욕조', 400000);
insert into ROOM_TABLE values('room302', 'suite', '40평', 8, '79인치TV, 욕조', 400000);
insert into ROOM_TABLE values('room303', 'suite', '40평', 8, '79인치TV, 욕조', 400000);

insert into MEMBER_TABLE values('p123@naver.com', 'u12345', '엄용민', '010-9999-9888', '1999-06-28', '내국인');
insert into MEMBER_TABLE values('t123@naver.com', 'j12345', '조영태', '010-7799-8787', '1966-09-28', '내국인');
insert into MEMBER_TABLE values('y123@naver.com', 's12345', '강찬성', '010-6663-8558', '1970-05-22', '내국인');

insert into RESERVE_TABLE values('reserve'||RESERVE_TABLE_SEQ.nextval, 'p123@naver.com', 'room101', '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values('reserve'||RESERVE_TABLE_SEQ.nextval, 'p123@naver.com', 'room102', '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values('reserve'||RESERVE_TABLE_SEQ.nextval, 't123@naver.com', 'room202', '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values('reserve'||RESERVE_TABLE_SEQ.nextval, 't123@naver.com', 'room203', '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values('reserve'||RESERVE_TABLE_SEQ.nextval, 'y123@naver.com', 'room302', '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values('reserve'||RESERVE_TABLE_SEQ.nextval, 'y123@naver.com', 'room303', '2023-07-15', '2023-07-17', 3);

insert into BOARD_TABLE values(BOARD_TABLE_SEQ.nextval, '제목이다', '내용이다', 'p123@naver.com', 0, SYSDATE, SYSDATE);
insert into BOARD_TABLE values(BOARD_TABLE_SEQ.nextval, '이런제목', '이런내용', 't123@naver.com', 0, SYSDATE, SYSDATE);
insert into BOARD_TABLE values(BOARD_TABLE_SEQ.nextval, '저런제목', '저런내용', 'y123@naver.com', 0, SYSDATE, SYSDATE);

insert into COMMENT_TABLE values(COMMENT_TABLE_SEQ.nextval, COMMENT_TABLE_SEQ.currval, '댓글이다', SYSDATE, 'p123@naver.com', 1);
insert into COMMENT_TABLE values(COMMENT_TABLE_SEQ.nextval, COMMENT_TABLE_SEQ.currval, '나도댓글', SYSDATE, 't123@naver.com', 2);
insert into COMMENT_TABLE values(COMMENT_TABLE_SEQ.nextval, 1, '대댓글!', SYSDATE, 'y123@naver.com', 1);
insert into COMMENT_TABLE values(COMMENT_TABLE_SEQ.nextval, 2, '이것도대댓글!', SYSDATE, 'y123@naver.com', 2);

--파일생략(파일 필요)

insert into PAY_TABLE values('pay'||PAY_TABLE_SEQ.nextval, 'reserve1', 200000, '카드', '농협', '2023-07-11');
insert into PAY_TABLE values('pay'||PAY_TABLE_SEQ.nextval, 'reserve2', 200000, '카드', '농협', '2023-07-12');
insert into PAY_TABLE values('pay'||PAY_TABLE_SEQ.nextval, 'reserve3', 200000, '카드', '농협', '2023-06-26');
insert into PAY_TABLE values('pay'||PAY_TABLE_SEQ.nextval, 'reserve4', 200000, '카드', '농협', '2023-06-26');
insert into PAY_TABLE values('pay'||PAY_TABLE_SEQ.nextval, 'reserve5', 200000, '카드', '농협', '2023-06-26');
insert into PAY_TABLE values('pay'||PAY_TABLE_SEQ.nextval, 'reserve6', 200000, '카드', '농협', '2023-06-26');

--일단 다 insert 해서 테스트해보고 필요한부분만 고르자
--컬럼 크기들 다시 수정하자
--시퀸스 다시 넣고 fk값들 references로 받아올 수 있다. 선배기수도 member 폰넘버를 mymenu fk폰넘버로 받았다.
--MEMBER_NUM NUMBER(7) constraint MEMBER_PK primary key,
--PHONE_NUM VARCHAR2(11) constraint MYMENU_MEMBER_NUM_FK references MEMBER(PHONE_NUM), -- FK
--유저를 삭제했다가 다시 생성하니까 drop 문이 쓸모가 없는 것 같기도..

commit;

--select tname from tab;
--desc ROOM_TABLE;
--desc ....

select * from ADMIN_TABLE;
select * from ROOM_TABLE;
select * from MEMBER_TABLE;
select * from RESERVE_TABLE;
select * from BOARD_TABLE;
select * from COMMENT_TABLE;
select * from FILE_TABLE;
select * from PAY_TABLE;