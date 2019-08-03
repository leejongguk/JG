create table sample1(col1 varchar2(500));

create table sample2(col2 varchar2(50));


select * from sample1;
select * from sample2;

delete from sample1;

alter table board add(replycnt number default 0 );



update board set replycnt = (select count(rno) from reply where reply.bno=board.bno);
