create database eventsdb;
use eventsdb;
create table tbl_clients(
    clientId varchar(255)  not null PRIMARY KEY ,
    clientName varchar(255),
    email varchar(255),
    clientAddress varchar(255),
    gender enum('MALE','FEMALE'),
    dob DATE,
    deleted enum('YES','NO')
);

create table tbl_events(
     eventNo varchar(255)  not null PRIMARY KEY,
     eventId varchar(255),
     eventName varchar(255),
     eventVenue varchar(255),
     eventDate DATE,
     maxCapacity int,
     eventStatus enum('ACTIVE','POSTPONE','ENDED'),
     clientId varchar(255),
     url varchar(255),
     deleted enum('YES','NO')
);
create table tbl_tickets(
     ticketNo varchar(255)  not null primary key,
     eventNo varchar(255),
     ticketLevel enum('VVIP','VIP','REGULAR'),
     ticketPrice Decimal(10,2),
     userId int,
     deleted enum('YES','NO')
);
create table tbl_permissions(
     id int auto_increment not null primary key,
     permission varchar(255)  not null
);

create table tbl_cart(
     id int auto_increment not null primary key,
     ticketNo varchar(255) not null,
     ticketPrice Decimal(10,2),
     userId int NOT NULL,
     deleted enum('YES','NO')
);
/*drop table tbl_cart;*/
create table tbl_users(
     userId int auto_increment not null primary key,
     username varchar(255) not null,
     email varchar(255),
     password varchar(16),
     deleted enum('YES','NO')
);

ALTER TABLE tbl_events ADD FOREIGN KEY (clientId) REFERENCES tbl_clients(clientId) ON DELETE CASCADE;
ALTER TABLE tbl_tickets ADD FOREIGN KEY (eventNo) REFERENCES tbl_events(eventNo) ON DELETE CASCADE;
ALTER TABLE tbl_tickets ADD FOREIGN KEY (userId) REFERENCES tbl_users(userId) ON DELETE CASCADE;
ALTER TABLE tbl_cart ADD FOREIGN KEY (userId) REFERENCES tbl_users(userId) ON DELETE CASCADE;
ALTER TABLE tbl_cart ADD FOREIGN KEY (ticketNo) REFERENCES tbl_tickets(ticketNo) ON DELETE CASCADE;
desc tbl_clients;

/*ALTER TABLE tbl_clients ADD PRIMARY KEY (idNo);
delete from  tbl_clients where idNo=31313131;*/

show tables;
/*desc tbl_sales;*/
desc tbl_clients;
desc tbl_tickets;
desc tbl_events;
desc tbl_users;

ALTER  table  tbl_tickets add column ticketStatus enum('ACTIVE','POSTPONED','ENDED','EXPIRED') after ticketPrice;

insert into tbl_users(username, email, password, deleted) values ('sol','sol@codesol.com','sol12','NO');
insert into tbl_users(username, email, password, deleted) values ('chai','chai@codesol.com','chai12','NO');
insert into tbl_users(username, email, password, deleted) values ('admin','admin@codesol.com','admin','NO');
