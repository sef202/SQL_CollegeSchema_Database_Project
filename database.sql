CREATE TABLE Professor(
ssn varchar(9) NOT NULL primary key,
pname varchar(45),
paddress varchar(35),
city varchar(25),
state varchar(2),
zipcode int(9),
areacode int(3),
7digit int(7),
sex enum('M','F'),
title char(4),
salary decimal(12,2));

CREATE TABLE collegeDeg(
pssn varchar(9),
collegedeg varchar(25),
primary key (pssn, collegedeg),
foreign key (pssn) references Professor(ssn));

CREATE TABLE Department(
dnum int(3) NOT NULL primary key,
chair varchar(45),
dname varchar(45),
dtelephone int(10),
officeLoc varchar(5),
foreign key (chair) references Professor(ssn));


CREATE TABLE Student(
cwid varchar(9) NOT NULL primary key,
sfname varchar(50),
slname varchar(50),
sphone int(11),
saddress varchar(128),
major int(3),
foreign key (major) references Department(dnum));

CREATE TABLE Course(
cnum varchar(7) NOT NULL primary key,
cname varchar(30),
textbook varchar(128),
units tinyint(4),
dept int(3),
foreign key (dept) references Department(dnum));

CREATE TABLE Prereq(
prevcourse varchar(7),
currcourse varchar(7),
primary key (prevcourse, currcourse),
foreign key (prevcourse) references Course(cnum),
foreign key (currcourse) references Course(cnum));

CREATE TABLE Section(
secnum int(5) NOT NULL primary key,
spssn varchar(9),
scnum varchar(7),
classroom varchar(6),
meetingdays varchar(16),
starttime varchar(7),
endtime varchar(7),
numseats int(3),
foreign key (spssn) references Professor(ssn),
foreign key (scnum) references Course(cnum));

CREATE TABLE Enroll(
ecwid varchar(9),
esecnum int(5),
grade enum('A+','A','A-','B+','B','B-','C+','C','C-','D+','D','D-','F','W'),
primary key (ecwid, esecnum),
foreign key (ecwid) references Student(cwid),
foreign key (esecnum) references Section(secnum));

CREATE TABLE Minor(
mdept int(3),
scwid varchar(9),
primary key (mdept, scwid),
foreign key (mdept) references Department(dnum),
foreign key (scwid) references Student(cwid));
