create database School;
use School;

create table Period(
ID int primary key,
start_date date,
end_date date
);

create table Group_ (
ID int primary key,
des varchar(255)
);

create table Week_day(
ID int primary key,
des varchar (255)
);

create table Teachers(
ID int primary key,
name_ varchar(255),
email varchar(255)
);

create table Students(
ID int primary key,
name_ varchar(255),
last_name varchar(255),
email varchar(255),
status_ bool,
id_group int,
foreign key (id_group) references Group_(ID)
);

create table Classes(
ID int primary key,
id_teacher int,
id_period int,
foreign key (id_teacher) references Teachers(ID),
foreign key (id_period) references Period(ID)
);

create table Schedule(
ID int primary key,
des varchar(255),
id_week_day int,
id_classes int, 
id_group int,
foreign key (id_week_day) references Week_day(ID),
foreign key (id_classes) references Classes(ID),
foreign key (id_group) references Group_(ID)
);

------ DATA_INSERT -----------
insert into Period (id,start_date,end_date) values
(1,'2026-01-01','2026-12-31');

insert into Groups_ values(
1,951
);

insert into Week_day(id,des) values(
(1,'Sunday'),
(2, 'Monday'),
(3,'Tuesday'),
(4, 'Wednesday'),
(5, 'Thursday'),
(6, 'Friday'),
(7, 'Saturday')
)
