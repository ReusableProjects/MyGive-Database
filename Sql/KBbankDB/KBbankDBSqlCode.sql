create database KBbank;
use KBbank
create user 'myGive'@'%' identified by 'myGive';
grant all privileges on KBbank.* to myGive with grant option;
flush privileges;
show grants for 'myGive'@'%';

create table CardHistory(
	cardNum VARCHAR(45) NOT NULL,
	historyNum INT NOT NULL,
	historyContent JSON NOT NULL,
	
	PRIMARY KEY(cardNum)
	);
