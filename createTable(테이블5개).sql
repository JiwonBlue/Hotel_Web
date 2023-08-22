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
drop table board_table;
drop table reserve_table;
drop table member_table;
drop table room_table;

purge recyclebin;

--table 생성

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
	RESERVE_CODE VARCHAR2(10) NOT NULL constraint RESERVE_CODE_PK primary key, --예약code(PK)
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

insert into ROOM_TABLE values(101, 'standard', '20평', 4, '55인치TV', 200000);
insert into ROOM_TABLE values(102, 'standard', '20평', 4, '55인치TV', 200000);
insert into ROOM_TABLE values(103, 'standard', '20평', 4, '55인치TV', 200000);
insert into ROOM_TABLE values(201, 'deluxe', '30평', 6, '70인치TV, 욕조', 300000);
insert into ROOM_TABLE values(202, 'deluxe', '30평', 6, '70인치TV, 욕조', 300000);
insert into ROOM_TABLE values(203, 'deluxe', '30평', 6, '70인치TV, 욕조', 300000);
insert into ROOM_TABLE values(301, 'suite', '40평', 8, '79인치TV, 욕조', 400000);
insert into ROOM_TABLE values(302, 'suite', '40평', 8, '79인치TV, 욕조', 400000);
insert into ROOM_TABLE values(303, 'suite', '40평', 8, '79인치TV, 욕조', 400000);

insert into MEMBER_TABLE values('p123@naver.com', 'u12345', '엄용민', '010-9999-9888', '1999-06-28', '내국인');
insert into MEMBER_TABLE values('t123@naver.com', 'j12345', '조영태', '010-7799-8787', '1966-09-28', '내국인');
insert into MEMBER_TABLE values('y123@naver.com', 's12345', '강찬성', '010-6663-8558', '1970-05-22', '내국인');

insert into RESERVE_TABLE values(RESERVE_TABLE_SEQ.nextval, 'p123@naver.com', 101, '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values(RESERVE_TABLE_SEQ.nextval, 'p123@naver.com', 102, '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values(RESERVE_TABLE_SEQ.nextval, 't123@naver.com', 103, '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values(RESERVE_TABLE_SEQ.nextval, 't123@naver.com', 201, '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values(RESERVE_TABLE_SEQ.nextval, 'y123@naver.com', 202, '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values(RESERVE_TABLE_SEQ.nextval, 'y123@naver.com', 203, '2023-07-15', '2023-07-17', 3);

insert into BOARD_TABLE values(BOARD_TABLE_SEQ.nextval, '제목이다', '내용이다', 'p123@naver.com', 0, SYSDATE, SYSDATE);
insert into BOARD_TABLE values(BOARD_TABLE_SEQ.nextval, '이런제목', '이런내용', 't123@naver.com', 0, SYSDATE, SYSDATE);
insert into BOARD_TABLE values(BOARD_TABLE_SEQ.nextval, '저런제목', '저런내용', 'y123@naver.com', 0, SYSDATE, SYSDATE);

insert into PAY_TABLE values(PAY_TABLE_SEQ.nextval, 1, 200000, '카드', '농협', '2023-07-11');
insert into PAY_TABLE values(PAY_TABLE_SEQ.nextval, 2, 200000, '카드', '농협', '2023-07-12');
insert into PAY_TABLE values(PAY_TABLE_SEQ.nextval, 3, 200000, '카드', '농협', '2023-06-26');
insert into PAY_TABLE values(PAY_TABLE_SEQ.nextval, 4, 200000, '카드', '농협', '2023-06-26');
insert into PAY_TABLE values(PAY_TABLE_SEQ.nextval, 5, 200000, '카드', '농협', '2023-06-26');
insert into PAY_TABLE values(PAY_TABLE_SEQ.nextval, 6, 200000, '카드', '농협', '2023-06-26');

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

select * from ROOM_TABLE;
select * from MEMBER_TABLE;
select * from RESERVE_TABLE;
select * from BOARD_TABLE;
select * from PAY_TABLE;