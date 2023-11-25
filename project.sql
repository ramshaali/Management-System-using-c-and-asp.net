create database onestop
use onestop

drop database onestop
 drop table student
 drop table student_course_data
 drop table degree_form
 drop table one_stop



 create table student(
s_id int,
pass varchar(4) not null,
s_name varchar(30) not null,
dues int CHECK (dues >= 0 and dues <= 1),
fyp_grade varchar(1) not null,
logged_in int CHECK (logged_in >= 0 and logged_in <= 1),
f_status int CHECK(f_status >= 0 and f_status <= 5),	/*form status*/
degree varchar(30),			/*to show transcript*/
majors varchar(30),
section varchar(1),
cgpa float,

primary key(s_id)


);




create table student_course_data(
s_id int,
s_name varchar(30) not null,
s_credit int,
course varchar(30),
grade varchar(30),
primary key(s_id, s_name, course),
foreign key(s_id) references student(s_id) ON DELETE cascade ON UPDATE cascade

);


/*from vs*/
create table degree_form(
s_name varchar(30),
s_id int,
cnic int,
f_name varchar(30),		/*father name*/
s_add varchar(30),
email varchar(30),
phone_no int,
f_date varchar(30),
img varchar(300),
degree varchar(30),
majors varchar(30),
section varchar(1),
pass_year int ,
ch_no int,
cgpa  float,
deg_issue_date varchar(30),

primary key(s_id),

foreign key (s_id) references student(s_id) ON DELETE cascade ON UPDATE cascade,

);




create table admin(
 id int,
 a_name varchar(30) not null,
 dep int not null, /* 1=onestop 2=fyp 3=finance*/
 logged_in int not null,
pass varchar(4) not null,
 primary key(id)
 );

 /*select * from admin
 drop table  fyp */

create table fyp(
a_id int,
id int,
comment varchar(30),
processing_time int,
rec_time time,
accepted int ,
primary key(id),
foreign key(a_id) references admin(id) ON DELETE cascade ON UPDATE cascade);


create table finance(
a_id int ,
id int,
comment varchar(30),

accepted int ,
primary key(id),
foreign key(a_id) references admin(id)  ON DELETE cascade ON UPDATE cascade);

/* create table Dir(
 id int,
 d_name varchar(30) not null,
 primary key(id)
 );
  insert into Dir values(4, 'Zyena')*/
   
create table one_stop(
a_id int,
token int,
fyp_id int not null,
finance_id int not null,

form_id int,
primary key(token),
foreign key(form_id) references degree_form(s_id) ON DELETE cascade ON UPDATE cascade,
foreign key(fyp_id) references fyp(id) ON DELETE cascade ON UPDATE cascade,
foreign key(finance_id) references finance(id) ON DELETE no action ON UPDATE no action,

/*
dir_id int not null,
foreign key(dir_id) references Dir(id) ON DELETE cascade ON UPDATE cascade,*/
foreign key(a_id) references admin(id) ON DELETE no action ON UPDATE no action

);
 

 create table history(
 t_date varchar(30),
 t_function varchar(30),
 t_table varchar(30),

 );


/* drop procedure form_fyp*/

CREATE PROCEDURE form_fyp @fy INT, @fi INT, @o INT ,@a INT,@fa INT,@ffa INT , @sid INT                   /* request transfer to fyp */
as
begin
Update  student 
set f_status=2
where f_status=1 and s_id=@sid;
 insert into fyp values(@fa,@fy, '',0,'0:0',0)
  insert into finance values(@ffa,@fi, 'Not Approved',0)
insert into one_stop(a_id, token,fyp_id,finance_id) values(@a,@o,@fy,@fi);
update one_stop  set form_id=(select s_id from degree_form where s_id=@sid)
where token=@o  ;


update fyp
set rec_time=RIGHT(CONVERT(VARCHAR, GETDATE(), 100),7)
from fyp f, student s, one_stop o,degree_form d
where f.id=o.fyp_id and s.s_id=d.s_id and d.s_id=o.form_id and  s.f_status=2 and o.token=@o and s.s_id=@sid;

insert into history values(GETDATE(),'Token generated ', CAST(@sid as varchar(10)))
end



/*exec form_fyp @fy=1, @fi=2, @o=3*/



drop procedure fyp_checking

CREATE PROCEDURE fyp_checking @fy INT, @comm varchar(30), @a INT , @t INT/* fyp project grade checking  + transfer to finance if approved */
as
begin
update fyp
set processing_time=datediff(SECOND, RIGHT(CONVERT(VARCHAR, GETDATE(), 100),7), rec_time), comment=@comm, accepted=@a
from fyp f, student s, one_stop o,degree_form d
where f.id=o.fyp_id and s.s_id=d.s_id and d.s_id=o.form_id and ( s.f_status=2 or s.f_status=5) and f.id=@fy and o.token=@t  ;


update  student
set f_status=3
from fyp f, student s, one_stop o,degree_form d
where f.id=o.fyp_id and s.s_id=d.s_id and d.s_id=o.form_id and ( s.f_status=2  or s.f_status=5) and f.accepted=1 and f.id=@fy  and o.token=@t

update  student
set f_status=5
from fyp f, student s, one_stop o,degree_form d
where f.id=o.fyp_id and s.s_id=d.s_id and d.s_id=o.form_id and  s.f_status=2 and f.accepted=0 and f.id=@fy and o.token=@t



insert into history values(GETDATE(),'Request processed by fyp of token: ', CAST(@t as varchar(10)))
select f.comment,s.s_id, s.s_name, o.form_id
from fyp f, student s, one_stop o,degree_form d
where f.id=o.fyp_id and s.s_id=d.s_id and d.s_id=o.form_id and  (s.f_status=3 or s.f_status=5)  and f.id=@fy

end

/*exec fyp_checking @fy=1*/
drop procedure finance_checking
CREATE PROCEDURE finance_checking @fi INT, @comm varchar(30), @a INT , @t INT  /* finance checking  */
as
begin
update finance
set  comment=@comm, accepted=@a
from finance f , student s, degree_form d, one_stop o
where  f.id=o.finance_id and  s.s_id=d.s_id and  d.s_id=o.form_id and (s.f_status=3 or s.f_status=5) /* and (s.dues=1 and d.ch_no>0) */ and f.id=@fi and o.token=@t;



update   student
set f_status=4
from finance f , student s, degree_form d, one_stop o
where  f.id=o.finance_id and  s.s_id=d.s_id and  d.s_id=o.form_id and (s.f_status=3 or s.f_status=5) and f.accepted=1 and  f.id=@fi and o.token=@t;

update   degree_form
set  deg_issue_date=LEFT(CONVERT(VARCHAR, GETDATE(), 111),10)
from finance f , student s, degree_form d, one_stop o
where  f.id=o.finance_id and  s.s_id=d.s_id and  d.s_id=o.form_id and s.f_status=4 and f.accepted=1 and  f.id=@fi and o.token=@t;



update   student
set f_status=5
from finance f , student s, degree_form d,one_stop o
where  f.id=o.finance_id and  s.s_id=d.s_id and  d.s_id=o.form_id and s.f_status=3  and f.accepted=0 and f.id=@fi and o.token=@t;



insert into history values(GETDATE(),'Request processed by finance of token: ', CAST(@t as varchar(10)));


select f.comment,s.s_id, s.s_name, o.form_id
from finance f, student s, one_stop o,degree_form d
where f.id=o.finance_id and s.s_id=d.s_id and d.s_id=o.form_id and  (s.f_status=4 or s.f_status=5)  and  f.id=@fi

end




/*triggers*/
create trigger add_to_student on student
after insert
as
begin
print 'new student !'
insert into history values(GETDATE(),'insert', 'student')

end

create trigger add_to_admin on admin
after insert
as
begin
print 'new admin !'
insert into history values(GETDATE(),'insert', 'admin')

end
 
create trigger add_to_degree_form on degree_form
after insert
as
begin
print 'new request of degree !'
insert into history values(GETDATE(),'insert', 'degree_form')

end

create trigger generate_token on one_stop
after insert
as
begin
print 'Token Generated !'

end

create trigger updateprocess_fyp
on fyp
AFTER UPDATE
AS
BEGIN
PRINT 'Request processed by Fyp department'


END

create trigger updateprocess_finance
on finance
AFTER UPDATE
AS
BEGIN
PRINT 'Request processed by Finance department'

END


/*insertion*/

insert  into  student values(0839,'red','Ramsha',1,'B',0,0,'BS','CS','G',4.0)
insert  into  student values(0503,'blue','Abdullah',1,'A',0,0,'BS','CS','G',3.8)
insert  into  student values(0707,'aj','Eesha',1,'B',0,0,'BS','CS','G',3.8)
insert  into  student values(0822,'aq','Murtaza',0,'A',0,0,'BS','CS','G',3.9)

insert into student_course_data values(0839, 'Ramsha', 3,'PF','A')
insert into student_course_data values(0839, 'Ramsha', 3,'OS','A')
insert into student_course_data values(0839, 'Ramsha', 3,'DB','A')
insert into student_course_data values(0503, 'Abdullah',3,'PF','B')
insert into student_course_data values(0503, 'Abdullah',3,'OS','A')
insert into student_course_data values(0503, 'Abdullah',3,'DB','A')

 insert into admin values(2,'Sabeen',1,0,'us')
 insert into admin values(3,'Talha',2,0,'aaa')
 insert into admin values(4,'Shaheer',3,0,'zq')
  insert into admin values(5,'Zyena',4,0,'kb')




/*Queries*/

select * from history

select token as Token#, student.s_name as Student_Name, f_status as Form_status from student, one_stop,degree_form, admin where student.s_id = degree_form.s_id and one_stop.form_id = degree_form.s_id  and admin.logged_in=1 and f_status<>4 

select token as Token#, student.s_name as Student_Name, deg_issue_date  AS Issuance_Date from degree_form,   student, one_stop, admin where student.s_id = degree_form.s_id and one_stop.form_id = degree_form.s_id and  f_status=4 and admin.logged_in=1;

select token as Token#, student.s_name as Student_Name from student, one_stop,degree_form, admin where student.s_id = degree_form.s_id and one_stop.form_id = degree_form.s_id and  f_status=5 and admin.logged_in=1
select* 
from student
update student 
set f_status=0
where f_status=5 or f_status=4;
select * from degree_form
select * from one_stop
select * from fyp
select * from finance

select sd.s_credit, sd.course, sd.grade
from   student_course_data sd, student s
where s.s_id=sd.s_id and s.logged_in=1;


SELECT s_name,s_id, degree, majors, cgpa, section FROM student WHERE  logged_in = 1;


select student.s_id, student.s_name,f_date, fyp_grade,student.cgpa,token, fyp_id
from degree_form, student, one_stop, admin,fyp
where student.s_id=degree_form.s_id and one_stop.form_id=degree_form.s_id and  fyp.id=one_stop.fyp_id and fyp.a_id=admin.id and admin.logged_in=1;



select * from degree_form
select * from student
select * from admin
select * from one_stop

select accepted, student.s_name
from degree_form, student, one_stop,fyp
where student.s_id=degree_form.s_id and one_stop.form_id=degree_form.s_id and  fyp.id=one_stop.fyp_id and student.logged_in=1;

delete degree_form
where s_id='0839'
select * from student_course_data

delete one_stop
where token=1;

UPDATE STUDENT
SET logged_in=1;

SELECT student.s_name,student.s_id, student.degree, student.majors, degree_form.cgpa, deg_issue_date 
FROM student, degree_form WHERE student.s_id=degree_form.s_id and logged_in = 1

SELECT f_status,token FROM student, one_stop, degree_form WHERE student.s_id=degree_form.s_id and degree_form.s_id=one_stop.form_id and logged_in = 1

select * from student
select * from degree_form

delete fyp
where id=2;
select * from fyp

delete finance
where id=3;
select * from finance

update   degree_form
set  deg_issue_date=LEFT(CONVERT(VARCHAR, GETDATE(), 111),10)



select student.s_id AS Student_Id, student.s_name as Student_Name,f_date as Form_Submission_Date,f_status as Form_Status, 
fyp_grade As FYP_GRADE,student.cgpa AS CGPA,token AS TOKEN#, fyp_id AS REQUEST_ID from degree_form, student, one_stop, admin, 
fyp where student.s_id = degree_form.s_id and one_stop.form_id = degree_form.s_id and  fyp.id = one_stop.fyp_id and fyp.a_id = admin.id 
and admin.logged_in = 1  and f_status=2


insert into  degree_form values ('Ramsha', 0839,1234,'xyz','abcd','xyz@gmail.com',01234567,'25/09/2021','dfghytt','BS','CS','G',2024,34,4.0,'--');

select t_date as Time_Date, t_function as Operation, t_table as On_Table from history

select * from student

update admin
set logged_in=0
where id=3

update student
set logged_in=1
where s_id=0839

SELECT fyp.accepted, finance.accepted,f_status,token FROM student, one_stop, degree_form, fyp,finance WHERE student.s_id=degree_form.s_id and degree_form.s_id=one_stop.form_id and  fyp.id = one_stop.fyp_id and finance.id = one_stop.finance_id  and logged_in = 1

select student.s_id AS Student_Id, student.s_name as Student_Name,f_date as Form_Submission_Date,f_status as Form_Status, fyp_grade As FYP_GRADE,student.cgpa AS CGPA,token AS TOKEN#, fyp_id AS REQUEST_ID from degree_form, student, one_stop, admin, fyp where student.s_id = degree_form.s_id and one_stop.form_id = degree_form.s_id and  fyp.id = one_stop.fyp_id and fyp.a_id = admin.id and admin.logged_in = 1  and( f_status=2 or fyp.accepted=0);

select * from history