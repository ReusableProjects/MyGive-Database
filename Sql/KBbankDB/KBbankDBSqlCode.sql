#국민은행 카드사의 api는 사업자 등록 후에 이용할 수 있기에
#차후 api를 교체할때를 대비하여 만들어둔 코드입니다
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
