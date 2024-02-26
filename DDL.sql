Create table Art(
AID number(20),
Artist varchar(50),
Title varchar(50),
MonetaryValue number(20,3),
Type varchar(50),
YearCreated Number(20),
DateProcured Date,
ArtStatus varchar(50),
Gallery varchar(50),
primary key(AID)
);
create table ArtistInfo(
ID number(20),
Name varchar(50),
YearofBirth Number(20),
Category varchar(50),
primary key(ID)
);
create table Location(
AID number(20),
Name Varchar(50),
LID number(20),
Floor varchar(20),
Section varchar(20),
Gallery varchar(20),
primary key(LID),
foreign key (AID) references Art(AID)
);
create table OnLoan(
TrackingID number(20),
AID number(20),
Name Varchar(50),
DateReturned Date,
DateSent Date,
PolicyNumber number(20),
primary key(TrackingID,PolicyNumber),
foreign key (AID) references Art(AID)
);
create table Repairs(
RID number(20),
AID number(20),
LID number(20),
RestorationArtist varchar(30),
EstimatedDate Date,
DateArrived Date,
DateFinished Date,
CostofLabour number(20,4),
CostofRepair number(20,4),
RepairType varchar(30),
primary key(RID),
foreign key (AID) references Art(AID),
foreign key (LID) references Location(LID)
);

alter table Repairs add Name char(20);

alter table Repairs modify Name varchar(23);

alter table Repairs rename column Name to ArtName;

alter table Repairs drop column ArtName;
