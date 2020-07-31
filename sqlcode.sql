create database YOBODB;   # Once you copy-paste code, Step 1: Run only this code by selecting the query
use YOBODB;   # Step2: select(Highlight) this query & run it.So that this DataBase starts to run.(Thunder Symbol which you see)

create table UserAccount		# Step 3: Select(Highlight) the UserAccount Table & run it.(Thunder Symbol which you see)
(
	userid int primary key,
	Firstname varchar(50),Lastname varchar(50),Password varchar(20),LoyaltyPoints int,
    Email varchar(50),Phone varchar(20),WalletAmount int,Credibility int,
    CreatedTime timestamp,Address varchar(50)
)
  select * from UserAccount where userid=4

create table Genre      # Step 4: Select(Highlight) the Genre Table & run it.(Thunder Symbol which you see)
(
	genreid int primary key,
    GenreName varchar(50)
)
    select * from Genre

create table Video_Library # Step 5: Select(Highlight) the Video_Library Table & run it.(Thunder Symbol which you see)
(
	videoid int primary key,genreid int,
    foreign key(genreid) references Genre(genreid),
	creator_userid int,video_title varchar(20),Duration datetime,
    CurrentPrice bigint,LastWeekPrice int,LastWeekRating int,
    CurrentRating int,DemandLastWeek bigint,DemandThisWeek bigint
)
   select * from Video_Library

create table Video     # Step 6: Select(Highlight) the Video Table & run it.(Thunder Symbol which you see)
(
	Vidid int primary key,AboutVideo varchar(100),
    CatalogCategory varchar(50),Subcategory varchar(50),
    VideoFormat varchar(50),OfferPrice varchar(20)
)
   select * from Video

create table Reviewer         # Step 6: Select(Highlight) the Reviewer Table & run it.(Thunder Symbol which you see)
(
	reviewerid int primary key,
    ReviewingList varchar(50),
	no_of_reviews int
)
   select * from Reviewer

create table Downloads    # Step 7: Select(Highlight) the Downloads Table & run it.(Thunder Symbol which you see)
(
	download_id int primary key,
    videoid int, foreign key(videoid) references Video_Library(videoid),
    PricePaid int
)
select * from Downloads

create table Uploads   # Step 6: Select(Highlight) the Uploads Table & run it.(Thunder Symbol which you see)
(
	uploadid int primary key ,
	videoid int,foreign key(videoid) references Video_Library(videoid),
	ProposedPrice int
)
   select * from Uploads
   
create table Log     # Step 6: Select(Highlight) the Log Table & run it.(Thunder Symbol which you see)
(
	logid int primary key,
    action_time timestamp,userid int,foreign key(userid) references UserAccount(userid),
    videoid int,foreign key(videoid) references Video_Library(videoid),
    Amount float
)
select * from Log