create table reply(
rno number(10,0),
bno number(10,0) not null,
reply varchar2(1000) not null,
replyer varchar2(50) not null,
replyDate date default sysdate,
updateDate date default sysdate
);

create sequence seq_reply;

alter table reply add constraint pk_reply primary key (rno);

alter table reply add constraint fk_reply_board
foreign key (bno) references tbl_board(bno);


select * from board;

select * from REPLY;

create table board(
bno number(10,0),
title varchar2(200) not null,
content varchar2(2000) not null,
writer varchar2(50) not null,
regdate date default sysdate,
udatedate date default sysdate

);