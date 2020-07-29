create database YOBODB;
use YOBODB;
create table UserAccount
(
	userid int primary key auto_increment,
	Firstname varchar(50),Lastname varchar(50),Password varchar(20),LoyaltyPoints int,
    Email varchar(50),Phone varchar(20),WalletAmount int,Credibility int,
    CreatedTime timestamp,Address varchar(50)
)
insert into UserAccount('Sandeep','K',crypt('vikas'),6,'abc@yobomail.com','67895412',78,8,'2019-09-15','torronto express')
insert into UserAccount(userid,Firstname,Lastname,Password,LoyaltyPoints,Email,Phone,WalletAmount,Credibility,CreatedTime,Address) 
values(1,'Sandeep','K','vikas',6,'abc@yobomail.com','67895412',78,8,'2019-09-15','torrontoexpress');
insert into UserAccount values(2,'Kaushik','Reddy','kaus',5,'kaushik@yobomail.com','7890965689',9890,7,'2020-09-17','expressgitway')
insert into UserAccount values(3,'Vineet','kallel','vin',6,'vineet@yobomail.com','8976578906',789,8,'2020-10-24','jaguars')
insert into UserAccount values(4,'Rakesh','Goel','rak',7,'rakesh@yobomail.com','6879865609',689,6,'2019-08-07','marathalli')
update UserAccount
set LoyaltyPoints=9 where userid=1
select * from UserAccount
create table Genre
(
	genreid int primary key auto_increment,
    GenreName varchar(50)
)
insert into Genre(genreid,GenreName) values('','Vignesh')
insert into Genre values(3,'Kaushik')
insert into Genre values(4,'Karthik')
select * from Genre
create table Video_Library
(
	videoid int primary key auto_increment,genreid int,
    foreign key(genreid) references Genre(genreid),
	creator_userid int,video_title varchar(20),Duration datetime,
    CurrentPrice bigint,LastWeekPrice int,LastWeekRating int,
    CurrentRating int,DemandLastWeek bigint,DemandThisWeek bigint
)
insert into Video_Library values(1,1,1,'YoboVideos','2020-10-18',8790,765,7,8,9,18)
insert into Video_Library values(2,2,2,'YoboBoxOffice','2020-10-19',8791,766,6,9,10,19)
insert into Video_Library values(3,3,3,'YoboVideosDetails','2020-10-20',8792,767,8,5,11,20)
insert into Video_Library values(4,4,4,'Yobo','2020-10-21',8792,767,7,10,12,21)
select * from Video_Library
create table Video
(
	Vidid int primary key auto_increment,AboutVideo varchar(100),
    CatalogCategory varchar(50),Subcategory varchar(50),
    VideoFormat varchar(50),OfferPrice varchar(20)
)
insert into Video values(1,'VideoBoxOffice','Education','Edu','Long','789')
insert into Video values(2,'VideoOffice','Movies','Mov','Mediocore','790')
insert into Video values(3,'Video','Entertainment','Ent','Small','7909')
insert into Video values(4,'VideoRelated','Outgoing','Out','Long','7999')
select * from Video

create table Reviewer
(
	reviewerid int primary key auto_increment,
    ReviewingList varchar(50),
	no_of_reviews int
)
insert into Reviewer values(1,'Youtube Box Office',1)
insert into Reviewer values(2,'Box Office',2)
insert into Reviewer values(3,'Netflix Box Office',3)
insert into Reviewer values(4,'Netflix Office',4)
select * from Reviewer

create table Downloads
(
	download_id int primary key auto_increment,
    videoid int, foreign key(videoid) references Video_Library(videoid),
    PricePaid int
)
insert into Downloads values(1,1,850)
insert into Downloads values(2,2,860)
insert into Downloads values(3,3,870)
insert into Downloads values(4,4,880)
select * from Downloads
create table Uploads
(
	uploadid int primary key auto_increment,
	videoid int,foreign key(videoid) references Video_Library(videoid),
	ProposedPrice int
)
insert into Uploads values(1,1,7000)
insert into Uploads values(2,2,7500)
insert into Uploads values(3,3,8000)
insert into Uploads values(4,4,8500)
select * from Uploads
create table Log
(
	logid int primary key auto_increment,
    action_time timestamp,userid int,foreign key(userid) references UserAccount(userid),
    videoid int,foreign key(videoid) references Video_Library(videoid),
    Amount float
)
insert into Log values(1,'2020-09-19 16:08:18',1,1,7890)
insert into Log values(2,'2020-09-20 16:09:20',2,2,7891)
insert into Log values(3,'2020-09-21 16:10:21',3,3,7892)
insert into Log values(4,'2020-09-22 17:09:20',4,4,7893)
select * from Log