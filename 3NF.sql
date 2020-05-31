create table user_email(user_id varchar(10),email_id varchar(30),PRIMARY KEY(user_id));
insert into user_email values('MA12','alex@ymail.com');
insert into user_email values('PO45','emma.join@gmail.co');
insert into user_email values('LA33','victoria@yahoo.co');
insert into user_email values('CH99','joe.1997@hotmail.com');
insert into user_email values('DA74','dlany01@live.com');
select * from user_email;


--delete user_address where zip = 10008
create table user_address(zip number(6),city varchar(30),state varchar(30),PRIMARY KEY (zip));
insert into user_address values(75001,'Houstan','Texas');
insert into user_address values(10008,'Albany','New York');
insert into user_address values(34000,'Istanbul','Turkey');
insert into user_address values(90201,'Los Angeles','California');
insert into user_address values(32006,'Miami','Florida');
select * from user_address

create table user_personal(user_id varchar(10),first_name varchar(30),last_name varchar(30),zip number(6),
    PRIMARY KEY (user_id),
    FOREIGN KEY (zip) REFERENCES user_address(zip));
insert into user_personal values('MA12','Alex','Jones',75001);
insert into user_personal values('PO45','Emma','Stone',10008);
insert into user_personal values('LA33','Victoria','Aurora',34000);
insert into user_personal values('CH99','Joe','Johnson',90201);
insert into user_personal values('DA74','Dany','William',32006);
select * from user_personal;