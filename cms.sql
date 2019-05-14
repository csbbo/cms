
DROP TABLE IF EXISTS `adminUser`;
CREATE TABLE `adminUser` (
  id int primary key auto_increment,
  name char(10) not null unique,
  password char(40) not null
);

LOCK TABLES `adminUser` WRITE;
insert into `adminUser`(name,password) values
("root","8520"),
("陈少波","8520");
UNLOCK TABLES;

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  num char(10) primary key,
  name char(10) not null,
  age int not null,
  password char(40) not null
);

LOCK TABLES `student` WRITE;
insert into `student` values
("16101202","张三",18,"8520"),
("16101201","小王",20,"8520"),
("16101203","小李",21,"8520"),
("16101204","李四",17,"8520");
UNLOCK TABLES;

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  num char(10) primary key,
  name char(10) not null,
  phone char(11) not null,
  profession char(40) not null,
  password char(40) not null
);

LOCK TABLES `teacher` WRITE;
insert into `teacher` values
("98642001","张老师","13978901767","计算机","8520"),
("98642002","小王老师","13978901767","计算机","8520"),
("98642003","小李老师","13978901767","软工","8520"),
("98642004","李老师","13978901767","软工","8520");
UNLOCK TABLES;

DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  num char(10) primary key,
  seating int not null,
  media tinyint(1)
);

LOCK TABLES `classroom` WRITE;
insert into `classroom` values
("8-201",68,1),
("8-301",60,1),
("9-301",61,0),
("9-302",67,0);
UNLOCK TABLES;

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  num char(10) primary key,
  name char(10) not null,
  ctime char(20) not null,
  maxCount int not null,
  studentCount int default 0,

  roomNum char(10),
  teacherNum char(10),
  check(maxCount>=studentCount),
  foreign key (roomNum) references classroom(num) on delete cascade,
  foreign key (teacherNum) references teacher(num) on delete cascade
);

LOCK TABLES `course` WRITE;
insert into `course` values
("001","java EE","星期1下午第1节",20,9,"8-201","98642001"),
("002","Oracle","星期2下午第2节",30,12,"8-301","98642002"),
("003","Web","星期4上午第1节",25,19,"9-301","98642003"),
("004","Android","星期4上午第1节",28,20,"9-302","98642004"),
("005","高等数学","星期3上午第2节",28,28,"9-302","98642001");
UNLOCK TABLES;

DROP TABLE IF EXISTS `studentCourse`;
CREATE TABLE `studentCourse` (
  score int default 0,
  studentNum char(10) not null,
  courseNum char(10) not null,

  primary key(studentNum,courseNum)
);

LOCK TABLES `studentCourse` WRITE;
insert into `studentCourse` values
(89,"16101201","001"),
(98,"16101202","002"),
(88,"16101203","003"),
(86,"16101204","004"),
(98,"16101202","003"),
(88,"16101203","004"),
(86,"16101204","005");
UNLOCK TABLES;