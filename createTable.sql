--���� ����
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

--table ����
CREATE TABLE ADMIN_TABLE(
	ADMIN_ID VARCHAR2(10) NOT NULL constraint ADMIN_ID_PK primary key, --�����ڵ�(���̵�)(PK)
	ADMIN_NAME VARCHAR2(10) NOT NULL, --�����̸�
	ADMIN_PWD VARCHAR2(10) NOT NULL --���κ�й�ȣ
);
create sequence ADMIN_TABLE_SEQ start with 1 increment by 1 nocache;

CREATE TABLE ROOM_TABLE(
	ROOM_CODE VARCHAR2(10) NOT NULL constraint ROOM_CODE_PK primary key, --�����ڵ�(PK)
	ROOM_TYPE VARCHAR2(10) NOT NULL, --����Ÿ��
	ROOM_SIZE VARCHAR2(10) NOT NULL, --���Ǹ���
	ROOM_COUNT NUMBER(10) NOT NULL, --��������
	ROOM_INFO VARCHAR(40) NOT NULL, --��������
	ROOM_PRICE NUMBER(10) NOT NULL --���ǰ���
);
--create sequence ROOM_TABLE_SEQ start with 101 increment by 1 nocache;

CREATE TABLE MEMBER_TABLE(
	MEMBER_ID VARCHAR(30) NOT NULL constraint MEMBER_ID_PK primary key, --ȸ������code(PK)
	MEMBER_PWD VARCHAR(30) NOT NULL, --��й�ȣ
	MEMBER_NAME VARCHAR(10) NOT NULL, --�̸�
	MEMBER_PHONE VARCHAR(20) NOT NULL, --����ó
	MEMBER_BIRTHDAY DATE NOT NULL, --�������
	MEMBER_IN_OUT VARCHAR(10) NOT NULL --��/�ܱ���
);

CREATE TABLE RESERVE_TABLE(
	RESERVE_CODE VARCHAR2(10) NOT NULL constraint RESERVE_CODE_pk primary key, --����code(PK)
	MEMBER_ID VARCHAR2(30) NOT NULL constraint RESERVE_MEMBER_ID_FK references MEMBER_TABLE(MEMBER_ID), --ȸ������code(FK)
	ROOM_CODE VARCHAR2(10) NOT NULL constraint RESERVE_ROOM_CODE_FK references ROOM_TABLE(ROOM_CODE), --����code(FK)
	RESERVE_START_DAY DATE NOT NULL, --�̿������
	RESERVE_END_DAY DATE NOT NULL, --�̿�������
	RESERVE_COUNT NUMBER(10) NOT NULL --�����ο�
);
create sequence RESERVE_TABLE_SEQ start with 1 increment by 1 nocache;

CREATE TABLE BOARD_TABLE(
	BOARD_CODE VARCHAR2(10) NOT NULL constraint BOARD_CODE_PK primary key, --�Խ����ڵ�(PK)
	BOARD_TITLE VARCHAR2(50) NOT NULL, --�Խ�������
	BOARD_CONTENT VARCHAR2(1000) NOT NULL, --�Խ��ǳ���
	MEMBER_ID VARCHAR2(30) NOT NULL constraint BOARD_MEMBER_ID_FK references MEMBER_TABLE(MEMBER_ID), --ȸ������code(FK)
	BOARD_VIEW NUMBER(20), --�Խ�����ȸ��
	BOARD_RDATE DATE NOT NULL, --�Խ����ۼ���
	BOARD_UDATE DATE NOT NULL --�Խ��Ǽ�����
);
create sequence BOARD_TABLE_SEQ start with 1 increment by 1 nocache;

CREATE TABLE COMMENT_TABLE(
	COMMENT_CODE VARCHAR2(10) NOT NULL constraint COMMENT_CODE_PK primary key, --����ڵ�(PK)
	RECOMMENT_CODE VARCHAR2(10) NOT NULL constraint RECOMMENT_COMMENT_CODE_FK references COMMENT_TABLE(COMMENT_CODE), --�����ڵ�(FK)
	COMMENT_CONTENT VARCHAR2(500) NOT NULL, --��۳���
	COMMENT_RDATE DATE NOT NULL, --����ۼ���¥
	MEMBER_ID VARCHAR2(30) NOT NULL constraint COMMENT_MEMBER_ID_FK references MEMBER_TABLE(MEMBER_ID), --ȸ��(FK)
	BOARD_CODE VARCHAR2(10) NOT NULL constraint COMMENT_BOARD_CODE_FK references BOARD_TABLE(BOARD_CODE) --�Խ���(FK)
);
create sequence COMMENT_TABLE_SEQ start with 1 increment by 1 nocache;

CREATE TABLE FILE_table(
	FILE_CODE VARCHAR2(10) NOT NULL constraint FILE_CODE primary key, 
	FILE_OGNAME VARCHAR(50) NOT NULL,
	FILE_SAVENAME VARCHAR(100) NOT NULL, 
	FILE_SAVEPATH VARCHAR(50) NOT NULL, 
	FILE_SIZE VARCHAR(50) NOT NULL,
	BOARD_code VARCHAR2(10) NOT NULL constraint FILE_BOARD_CODE_FK references BOARD_TABLE(BOARD_CODE) --�Խ���(FK)
);
create sequence FILE_TABLE_SEQ start with 1 increment by 1 nocache;


CREATE TABLE PAY_TABLE(
	PAY_CODE VARCHAR2(10) NOT NULL constraint PAY_CODE primary key, --����code(PK)
	RESERVE_CODE VARCHAR(10) NOT NULL constraint PAY_RESERVE_CODE_FK references RESERVE_TABLE(RESERVE_CODE), --����code(FK)
	PAY_MONEY NUMBER(20) NOT NULL, --�����ݾ�
	PAY_WHAT VARCHAR(10) NOT NULL, --��������
	PAY_BANK VARCHAR(10) NOT NULL, --��������
	PAY_DAY DATE NOT NULL --�����Ͻ�
);
create sequence PAY_TABLE_SEQ start with 1 increment by 1 nocache;


--insert
insert into ADMIN_TABLE values('admin'||ADMIN_TABLE_SEQ.nextval, '������', 'kim123');
insert into ADMIN_TABLE values('admin'||ADMIN_TABLE_SEQ.nextval, '������', 'jo123');
insert into ADMIN_TABLE values('admin'||ADMIN_TABLE_SEQ.nextval, '������', 'y123');
insert into ADMIN_TABLE values('admin'||ADMIN_TABLE_SEQ.nextval, '�ſ��', 'sin123');

insert into ROOM_TABLE values('room101', 'standard', '20��', 4, '55��ġTV', 200000);
insert into ROOM_TABLE values('room102', 'standard', '20��', 4, '55��ġTV', 200000);
insert into ROOM_TABLE values('room103', 'standard', '20��', 4, '55��ġTV', 200000);
insert into ROOM_TABLE values('room201', 'deluxe', '30��', 6, '70��ġTV, ����', 300000);
insert into ROOM_TABLE values('room202', 'deluxe', '30��', 6, '70��ġTV, ����', 300000);
insert into ROOM_TABLE values('room203', 'deluxe', '30��', 6, '70��ġTV, ����', 300000);
insert into ROOM_TABLE values('room301', 'suite', '40��', 8, '79��ġTV, ����', 400000);
insert into ROOM_TABLE values('room302', 'suite', '40��', 8, '79��ġTV, ����', 400000);
insert into ROOM_TABLE values('room303', 'suite', '40��', 8, '79��ġTV, ����', 400000);

insert into MEMBER_TABLE values('p123@naver.com', 'u12345', '�����', '010-9999-9888', '1999-06-28', '������');
insert into MEMBER_TABLE values('t123@naver.com', 'j12345', '������', '010-7799-8787', '1966-09-28', '������');
insert into MEMBER_TABLE values('y123@naver.com', 's12345', '������', '010-6663-8558', '1970-05-22', '������');

insert into RESERVE_TABLE values('reserve'||RESERVE_TABLE_SEQ.nextval, 'p123@naver.com', 'room101', '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values('reserve'||RESERVE_TABLE_SEQ.nextval, 'p123@naver.com', 'room102', '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values('reserve'||RESERVE_TABLE_SEQ.nextval, 't123@naver.com', 'room202', '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values('reserve'||RESERVE_TABLE_SEQ.nextval, 't123@naver.com', 'room203', '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values('reserve'||RESERVE_TABLE_SEQ.nextval, 'y123@naver.com', 'room302', '2023-07-15', '2023-07-17', 3);
insert into RESERVE_TABLE values('reserve'||RESERVE_TABLE_SEQ.nextval, 'y123@naver.com', 'room303', '2023-07-15', '2023-07-17', 3);

insert into BOARD_TABLE values(BOARD_TABLE_SEQ.nextval, '�����̴�', '�����̴�', 'p123@naver.com', 0, SYSDATE, SYSDATE);
insert into BOARD_TABLE values(BOARD_TABLE_SEQ.nextval, '�̷�����', '�̷�����', 't123@naver.com', 0, SYSDATE, SYSDATE);
insert into BOARD_TABLE values(BOARD_TABLE_SEQ.nextval, '��������', '��������', 'y123@naver.com', 0, SYSDATE, SYSDATE);

insert into COMMENT_TABLE values(COMMENT_TABLE_SEQ.nextval, COMMENT_TABLE_SEQ.currval, '����̴�', SYSDATE, 'p123@naver.com', 1);
insert into COMMENT_TABLE values(COMMENT_TABLE_SEQ.nextval, COMMENT_TABLE_SEQ.currval, '�������', SYSDATE, 't123@naver.com', 2);
insert into COMMENT_TABLE values(COMMENT_TABLE_SEQ.nextval, 1, '����!', SYSDATE, 'y123@naver.com', 1);
insert into COMMENT_TABLE values(COMMENT_TABLE_SEQ.nextval, 2, '�̰͵�����!', SYSDATE, 'y123@naver.com', 2);

--���ϻ���(���� �ʿ�)

insert into PAY_TABLE values('pay'||PAY_TABLE_SEQ.nextval, 'reserve1', 200000, 'ī��', '����', '2023-07-11');
insert into PAY_TABLE values('pay'||PAY_TABLE_SEQ.nextval, 'reserve2', 200000, 'ī��', '����', '2023-07-12');
insert into PAY_TABLE values('pay'||PAY_TABLE_SEQ.nextval, 'reserve3', 200000, 'ī��', '����', '2023-06-26');
insert into PAY_TABLE values('pay'||PAY_TABLE_SEQ.nextval, 'reserve4', 200000, 'ī��', '����', '2023-06-26');
insert into PAY_TABLE values('pay'||PAY_TABLE_SEQ.nextval, 'reserve5', 200000, 'ī��', '����', '2023-06-26');
insert into PAY_TABLE values('pay'||PAY_TABLE_SEQ.nextval, 'reserve6', 200000, 'ī��', '����', '2023-06-26');

--�ϴ� �� insert �ؼ� �׽�Ʈ�غ��� �ʿ��Ѻκи� ����
--�÷� ũ��� �ٽ� ��������
--������ �ٽ� �ְ� fk���� references�� �޾ƿ� �� �ִ�. �������� member ���ѹ��� mymenu fk���ѹ��� �޾Ҵ�.
--MEMBER_NUM NUMBER(7) constraint MEMBER_PK primary key,
--PHONE_NUM VARCHAR2(11) constraint MYMENU_MEMBER_NUM_FK references MEMBER(PHONE_NUM), -- FK
--������ �����ߴٰ� �ٽ� �����ϴϱ� drop ���� ���� ���� �� ���⵵..

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