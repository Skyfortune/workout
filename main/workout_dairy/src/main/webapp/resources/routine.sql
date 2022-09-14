create table if not exists routine(
p_id varchar2(10) not null primary key,
p_name varchar2(20),
p_category varchar2(30),
p_text varchar2(500),
p_term varchar2(10),
p_1 number,
p_2 number,
p_3 number,
p_4 number,
p_5 number,
p_6 number
)default charset=utf8;