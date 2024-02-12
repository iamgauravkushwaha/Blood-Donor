create database blooddonar
use blooddonar
 -------------------------
 
create table adminlog(admnid int primary key,username varchar(20),password varchar(20))
  
insert into adminlog values(121201,'Guruji','guruji123'),(121202,'Naveen','Naveen123')

create procedure proc_validuser(@a int ,@b varchar(20))
as begin
select count(*) from adminlog where admnid=@a and password=@b
end;
-----------------------------
create table states(sid varchar(5) primary key,sname varchar(20))
insert into states values('s29','Delhi'),
('s1','Maharastra'), 
('s2','Andhra Pradesh'),
('s3','Arunachal Pradesh'),
('s4','Assam'),
('s5','Bihar'),
('s6','Chattisgrah'),
('s7','Goa'),
('s8','Gujrat'),
('s9','Haryana'),
('s10','Himanchal Pradesh'),
('s11','Jharkhand'),
('s12','Karnataka'),
('s13','Kerla'),
('s14','Madhya pradesh'),
('s15','Manipur'),
('s16','Meghalaya'),
('s17','Mizoram'),
('s18','Nagaland'), 
('s19','Odisha'),
('s20','Punjab'),
('s21','Rajasthan'),
('s22','Sikkim'),
('s23','Tamil Nadu'),
('s24','Telangana'),
('s25','Tripura'),
('s26','UttaraKand'),
('s27','Uttar Pradesh'),
('s28','West Bangal');


create procedure proc_displaystates
as begin
select * from states
end;
------------------------------------------------
create table cities(cid varchar(10),cityname varchar(20),sid varchar(5) references states(sid));
insert into cities values('c1','Mumbai','s1'),('c2','Pune','s1'),('c3','Nagpur','s1'),('c4','Chandrapur','s1'),('c5','Akola','s1');
insert into cities values('c6','Patna','s5'),('c7','Gaya','s5'),('c8','Muzaffarpu','s5'),('c9','Bhagalpur','s5'),('c10','Nalanda','s5');
insert into cities values('c11','Hyderabad','s24'),('c12','Warangal','s24'),('c13','Nizamabad','s24'),('c14','Khammam','s24'),('c15','Karimnagar','s24')
insert into cities values('c16','Jaipur','s21'),('c17','Bikaner','s21'),('c18','Jaisalmer','s21'),('c19','Jodhpur','s21'),('c20','Udaipur','s21')
insert into cities values('c21','Mysore','s12'),('c22','Bangalore','s12'),('c23','Hubli','s12'),('c24','Mangalore','s12'),('c25','Belgaum','s12'),----('c15','Karimnagar','s24')---     
insert INTO cities VALUES('c26','Bhopal', 's14'), ('c27','Indore', 's14'), ('c28','Jabalpur', 's14'), ('c29','Gwalior', 's14'), ('c30','Ujjain', 's14'), ('c31','Rewa', 's14')
INSERT INTO cities  VALUES('c32','Bhubaneswar', 's19'), ('c33','Cuttack', 's19'), ('c34','Rourkela', 's19'), ('c35','Puri', 's19'), ('c36','Sambalpur', 's19')
 insert into cities values('c7', 'Raipur', 's6'),
    ('c38', 'Bhilai', 's6'),
    ('c39', 'Durg', 's6'),
    ('c40', 'Bilaspur', 's6'),
    ('c41', 'Korba', 's6')
insert into cities values('c42', 'Lucknow', 's27'),
    ('c43', 'Kanpur', 's27'),
    ('c44', 'Varanasi', 's27'),
    ('c45', 'Agra', 's27'),
    ('c46', 'Prayagraj', 's27')
insert into cities values ('c47','New Delhi', 's29'),
    ('c48','North Delhi', 's29'),
    ('c49','South Delhi', 's29'),
    ('c50','East Delhi', 's29'),
    ('c51','West Delhi', 's29')
	Select * from cities

	create procedure proc_displaycities(@a varchar(5))
	as begin
	select * from cities where sid=@a
	end;
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------
	Select * from newdonar;
drop table newdonar	
create table  newdonar(uid int identity,uname varchar(20),pswd varchar(20) unique ,gender varchar(10),lang varchar(30),states varchar(20),cities varchar(20),
                      bloodgroup varchar(10),phno bigint,email varchar(30));

create procedure proc_check_user(@a varchar(20),@b varchar(20))
as begin
select count(*) from newdonar where uname=@a and pswd=@b
end;

Create procedure proc_user_display(@a varchar(20),@b varchar(20))
as begin
select *from newdonar where uname=@a and pswd=@b
end;

create procedure proc_newdonar_insert(@a varchar(20),@b varchar(20),@c varchar(10),@d varchar(30),@e varchar(20),@f varchar(20),@g varchar(5),@h bigint,@i varchar(30))
as begin
insert into newdonar values(@a,@b,@c,@d,@e,@f,@g,@h,@i)
end;

create procedure proc_update_newdonar(@j int,@a varchar(20),@b varchar(20),@c varchar(10),@d varchar(30),@e varchar(20),@f varchar(20),@g varchar(5),@h bigint,@i varchar(30))
as begin
update newdonar set uname=@a,pswd=@b,gender= @c,lang= @d,states= @e,cities=@f,bloodgroup=@g,phno=@h,email=@i where uid=@j
end;

create procedure proc_display_donar
as begin
select * from newdonar
end;

create procedure proc_delete_donar(@a int)
as begin
delete from newdonar where uid=@a
end;

create procedure proc_search_donar(@a varchar(20),@b varchar(20),@c varchar(5))
as begin
select * from newdonar where states=@a and cities=@b and bloodgroup=@c
end
------------------------------------------------------------------------------------
create table BloodGroup(bldid varchar(6),bgroupname varchar(10));
insert into BloodGroup values('b1','O+'),('b2','O-'),('b3','A+'),('b4','A-'),('b5','B+'),('b6','B-'),('b7','AB+'),('b8','AB-');

create procedure proc_display_bldgroup
as begin
select * from BloodGroup
end;

-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
 



 



