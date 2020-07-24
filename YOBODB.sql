create database YOBO;
use YOBO;
create table UserAccount
(
	userid int primary key auto_increment,
	Firstname varchar(50),Lastname varchar(50),Password varchar(20),LoyaltyPoints int,
    Email varchar(50),Phone varchar(20),WalletAmount int,Credibility int,
    CreatedTime timestamp,Address varchar(50)
)
create table Genre
(
	genreid int primary key auto_increment,
    GenreName varchar(50)
)

create table Video_Library
(
	videoid int primary key auto_increment,genreid int,
    foreign key(genreid) references Genre(genreid),
	creator_userid int,video_title varchar(20),Duration datetime,
    CurrentPrice bigint,LastWeekPrice int,LastWeekRating int,
    CurrentRating int,DemandLastWeek bigint,DemandThisWeek bigint
)
create table Reviewer
(
	reviewerid int primary key auto_increment,
    ReviewingList varchar(50),
	no_of_reviews int
)
create table Downloads
(
	download_id int primary key auto_increment,
    videoid int, foreign key(videoid) references Video_Library(videoid),
    PricePaid int
)
create table Uploads
(
	uploadid int primary key auto_increment,
	videoid int,foreign key(videoid) references Video_Library(videoid),
	ProposedPrice int
)
create table Log
(
	logid int primary key auto_increment,
    action_time timestamp,userid int,foreign key(userid) references UserAccount(userid),
    videoid int,foreign key(videoid) references Video_Library(videoid),
    Amount float
)

insert into UserAccount('Abhi','Kaul',Hashbytes('SHA1','abhishek'),3,'abhi@yobomail.com',
			'7987890988',89000,5,'2020-08-09','Btm Layout')