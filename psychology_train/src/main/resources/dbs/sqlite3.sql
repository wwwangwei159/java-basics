------drop table 
drop table m_user;
drop table message_leave;
drop table reserve_course;
drop table questionnaire;
drop table evaluation_result;
drop table qna_question;
drop table question;
drop table question_option;
drop table exam_result_head;
drop table exam_result_detail;


CREATE TABLE m_user(  ---�û���
user_id varchar(15) primary key, ----yyyymmddhhmisssss8888
name varchar(80),
pwd varchar(80) DEFAULT NULL, 
create_datetime datetime default null, 
update_datetime datetime default null,
age int default null, 
sex varchar(10) default null,
mobile varchar(80) default null, 
email varchar(80) default null,
phone varchar(80) default null
);

CREATE TABLE message_leave ( ---���Ա�
mess_id varchar(15) primary key,  ----yyyymmddhhmisssss8888
reserve_name varchar(80) DEFAULT NULL, ---ԤԼ������
user_id varchar(80) DEFAULT NULL,
leave_datetime datetime DEFAULT NULL,
message varchar(1024) DEFAULT NULL, ---��������
mobile varchar(80) DEFAULT NULL,
email varchar(80) DEFAULT NULL,
phone varchar(80) DEFAULT NULL,
status varchar(80) DEFAULT NULL
);

CREATE TABLE reserve_course( ---ԤԼ��ʦ��
reserve_id varchar(15) primary key,  ----yyyymmddhhmisssss8888
reserve_name varchar(80) DEFAULT NULL, --ԤԼ������
user_id varchar(80) DEFAULT NULL,
point_datetime datetime DEFAULT NULL, --ԤԼ��ʱ��
agree_datetime datetime DEFAULT NULL,
mobile varchar(80) DEFAULT NULL,
email varchar(80) DEFAULT NULL,
phone varchar(80) DEFAULT NULL,
status varchar(2) DEFAULT NULL
);


CREATE TABLE questionnaire (
qna_id varchar(15) primary key,  ---�ʾ�id  ----yyyymmddhhmisssss888 
qna_name varchar(256) DEFAULT NULL,---�ʾ�����
user_id varchar(80) DEFAULT NULL,
create_datetime datetime DEFAULT NULL,
publish_datetime datetime DEFAULT NULL,
qna_type varchar(256) DEFAULT NULL,  ---�ʾ�����
qna_status varchar(20) DEFAULT NULL   ---�ʾ�����
);

CREATE TABLE evaluation_result (  ---�ʾ�������
result_id varchar(15) primary key,       
qna_id varchar(256) DEFAULT NULL,
min_score_interval int NOT NULL,   ---�ʾ�����
max_score_interval int NOT NULL,   ---�ʾ�����
result_message varchar(2048) DEFAULT NULL, ---�������
ressult_seq int NOT NULL
);

CREATE TABLE qna_question (
qna_qid varchar(15) primary key,  ---�ʾ����� ----yyyymmddhhmisssss888 
qna_id varchar(80) DEFAULT NULL,  ---�ʾ�id
q_id varchar(80) DEFAULT NULL,  ---����id
q_seq int NOT NULL    ---�ʾ��������
);

CREATE TABLE question (
q_id varchar(15) primary key,  ---����id
q_name varchar(512) DEFAULT NULL, ---��������
q_type varchar(20) DEFAULT NULL, ---�������ͣ���ѡ����ѡ
q_factor varchar(50) DEFAULT NULL,  ---�������ӣ���������
q_status varchar(20) DEFAULT NULL   ---����״̬
);

CREATE TABLE question_option (  ---����ѡ�����ݱ�
q_op_id varchar(15) primary key,     
q_op_seq int NOT NULL,
q_op_name varchar(512) DEFAULT NULL,
q_op_score int NOT NULL,
q_id varchar(80) DEFAULT NULL
);



CREATE TABLE exam_result_head (  ---��������
exam_id varchar(15) primary key,  ---����id     
qna_id varchar(15) DEFAULT NULL,  --�ʾ�id
user_id varchar(15) DEFAULT NULL, ---������id
exam_score int NOT NULL  ---�ʾ�
);

CREATE TABLE exam_result_detail (  ---��������
exam_result_id varchar(15) primary key,  ---��ϸid   
exam_id varchar(15) DEFAULT NULL,   ---����id   
qna_id varchar(15) DEFAULT NULL,  --�ʾ�id�����ֶ�
q_id varchar(15) DEFAULT NULL, ---����ID
exam_score int NOT NULL  ---�ʾ�
);


