INSERT INTO Professor
VALUES('111111111', 'Fallon Blake', '9042 Hill Field Drive', 'Tustin', 'CA', '92606','714','4035732', 'M','Mr.', '93,755.43');

INSERT INTO collegeDeg
VALUES('111111111','B.S. Math');
INSERT INTO collegeDeg
VALUES('111111111','M.S. Computer Science');
INSERT INTO collegeDeg
VALUES('111111111','Ph.D. Computer Science');

INSERT INTO Professor
VALUES('222222222', 'Cole Hall', '13 N. Bridgeton Ave. ', 'Brea', 'CA', '92821','626','8396416', 'M','Dr.','88,343.23');

INSERT INTO collegeDeg
VALUES('222222222','B.S. Information Technology');
INSERT INTO collegeDeg
VALUES('222222222','M.S. Computer Science');

INSERT INTO Professor
VALUES('333333333', 'Kristine Villa', '9988 Cobblestone Drive', 'Irvine', 'CA', '92602','971','17598534', 'F','Ms.', '97,234.54');

INSERT INTO collegeDeg
VALUES('333333333','B.S. Chemistry');
INSERT INTO collegeDeg
VALUES('333333333','M.S. Mathematics');
INSERT INTO collegeDeg
VALUES('333333333','Ph.D. Computer Engineering');


INSERT INTO Professor
VALUES('444444444', 'Zaid Shields', '782 Lincoln St.', ' Anaheim', 'CA', '96435','714','2766643', 'F','Mrs.', '101,353.65');

INSERT INTO collegeDeg
VALUES('444444444','B.S. Literature Arts');
INSERT INTO collegeDeg
VALUES('444444444','M.S. Philosophy');


INSERT INTO Department
VALUES('001', '333333333', 'Computer Science Department','7143255345','CS-511');

INSERT INTO Department
VALUES('002', '222222222', 'English Department','7147657345','EN-100');

INSERT INTO Student
VALUES('302492973','Eleanor','Bates', '7142323576', '907 East Edgefield Lane, San Francisco, CA 94112',
'002');

INSERT INTO Student
VALUES('302543584','Lorenzo','Townsend', '71465456','869 Pennsylvania Court, Santa Ana, CA 92701',
'002');

INSERT INTO Student
VALUES('302421234','Daryl','Cohen', '6264367354','8769 Orange Street, Brea, CA 95127',
'002');

INSERT INTO Student
VALUES('302766494','Jonathon','Parks', '5714643735','92 Fulton Street, North Hills, CA 91343',
'001');

INSERT INTO Student
VALUES('302876432','Dean','Morgan', '7043354675','25 Bradford Ave., Los Angeles, CA 90037',
'001'); 

INSERT INTO Student
VALUES('302857540','Spencer','Brock', '7145325976','15729 Downey Ave, Paramount, CA, 90723',
'002');

INSERT INTO Student
VALUES('302302307','Jessie','Mclaughlin', '2135635706','1 Chandler Ranch Road, Rolling Hills Estates, CA, 90274',
'001');

INSERT INTO Student
VALUES('392487539','Tricia','Mckenzie', '7146663523','8329 Laurel Canyon Blvd, Sun Valley, CA, 91352',
'001');

INSERT INTO Course
VALUES('CPSC140', 'Introduction to Python', 'Python Programming: An Introduction to Computer Science, 3rd Ed.',
'3', '001');

INSERT INTO Prereq
VALUES('CPSC140', 'CPSC140');

INSERT INTO Course
VALUES('CPSC250','Database Concepts','Database Design for Mere Mortals(3rd Edition)',
'3', '001');

INSERT INTO Prereq
VALUES('CPSC140', 'CPSC250');

INSERT INTO Course
VALUES('CPSC290','Computer Architechture','The Architecture of Computer Systems: 5th Edition',
'3', '001');

INSERT INTO Prereq
VALUES('CPSC140', 'CPSC290');

INSERT INTO Course
VALUES('ENGL127','American Survey of Literature','AMERICAN LITERATURE SURVEY: Prefatory essay by Van Wyck Brooks ',
'4', '002');

INSERT INTO Prereq
VALUES('ENGL127', 'ENGL127');

INSERT INTO Section
VALUES('11154','111111111','CPSC140','CS-321','TuTh','2:00PM','3:45PM','50');

INSERT INTO Section
VALUES('11198','222222222','CPSC250','CS-121','MoWe','12:00PM','2:50PM','25');

INSERT INTO Section
VALUES('10054','111111111','CPSC290','CS-123','TuTh','8:00AM','10:00AM','30');

INSERT INTO Section
VALUES('21164','333333333','CPSC250','CS-102','TuTh','9:00AM','12:50PM','25');

INSERT INTO Section
VALUES('20041','444444444','ENGL127','EN-162','MoWe','10:00PM','12:30PM','30');

INSERT INTO Section
VALUES('20012','444444444','ENGL127','EN-202','MoWe','4:00PM','6:30PM','25');

INSERT INTO Enroll
VALUES('302543584','11154','B+');

INSERT INTO Enroll
VALUES('302543584','11198','A+');

INSERT INTO Enroll
VALUES('302492973','11154','A-');

INSERT INTO Enroll
VALUES('302492973','21164','B');

INSERT INTO Enroll
VALUES('302492973','20012','B+');

INSERT INTO Enroll
VALUES('302421234','11198','A-');

INSERT INTO Enroll
VALUES('302421234','10054','C');

INSERT INTO Enroll
VALUES('302766494','11154','B');

INSERT INTO Enroll
VALUES('302766494','10054','B+');

INSERT INTO Enroll
VALUES('302766494','20012','A');

INSERT INTO Enroll
VALUES('302876432','20041','A-');

INSERT INTO Enroll
VALUES('302876432','11154','C+');

INSERT INTO Enroll
VALUES('302857540','11154','A');

INSERT INTO Enroll
VALUES('302857540','21164','A');

INSERT INTO Enroll
VALUES('302857540','20012','B');

INSERT INTO Enroll
VALUES('302302307','21164','C');

INSERT INTO Enroll
VALUES('302302307','11154','B');

INSERT INTO Enroll
VALUES('392487539','11154','B');

INSERT INTO Enroll
VALUES('392487539','20041','A-');

INSERT INTO Enroll
VALUES('392487539','21164','A');

INSERT INTO Minor
VALUES('001','302543584');

INSERT INTO Minor
VALUES('002','302302307');

INSERT INTO Minor
VALUES('002','392487539');

INSERT INTO Minor
VALUES('001','302421234');





