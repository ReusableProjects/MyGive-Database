create user 'myGive'@'%' identified by 'myGive';
create database myGive;
use myGive
grant all privileges on myGive.* to myGive with grant option;
flush privileges;
show grants for 'myGive'@'%';




create table Certification(
	 userNum INT NOT NULL,
	dateTime DATETIME NOT NULL,
	certType ENUM('receipt', 'photo') DEFAULT 'receipt',
	certContent BLOB,
	
	PRIMARY KEY(userNum, dateTime, certType)
	);

create table User(
	userNum INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(45) NOT NULL,
	pwd VARCHAR(45) NOT NULL,
	email VARCHAR(100) NOT NULL,
	tel VARCHAR(45) NOT NULL,
	
	PRIMARY KEY(userNum),
	UNIQUE(userNum, email, tel)
	);

 create table Contributor(
	userNum INT NOT NULL,
	nickName VARCHAR(45) DEFAULT 'nick name',
	contributedList LONGTEXT,
	
	PRIMARY KEY(userNum),
	FOREIGN KEY(userNum) REFERENCES User(userNum),
	UNIQUE(userNum, nickName)
	);

 create table Staff(
	userNum INT NOT NULL,
	authorityScope ENUM('owner', 'manager') DEFAULT 'manager',
	
	PRIMARY KEY(userNum),
	FOREIGN KEY(userNum) REFERENCES User(userNum),
	UNIQUE(userNum)
	);
create table ContributedOrganization(
	userNum INT NOT NULL AUTO_INCREMENT,
	organizationName VARCHAR(45) NOT NULL,
	fax VARCHAR(45),
	homePage VARCHAR(100),
	sincerity ENUM('horrible', 'bad', 'normal', 'good', 'excellent') NOT NULL DEFAULT 'normal',
	contributorList LONGTEXT,
	
	PRIMARY KEY(userNum)
	FOREIGN KEY(userNUM) REFERENCES User(userNum),
	UNIQUE(userNum, organizationName, fax, homePage)
	);
create table CardInfo(
	userNum INT NOT NULL,
	cardNum VARCHAR(45) NOT NULL,
	cardPwd VARCHAR(45) NOT NULL,
	birthDate DATE NOT NULL,
	expiryDate DATE NOT NULL,
	
	PRIMARY KEY(userNum),
	FOREIGN KEY(userNum) REFERENCES User(userNum),
	UNIQUE(userNum, cardNum)
	);
create table Post(
	postNum INT NOT NULL,
	postType ENUM('banner', 'post') NOT NULL DEFAULT 'banner',
	postTitle VARCHAR(45) NOT NULL,
	postContent BLOB NOT NULL,

	PRIMARY KEY(postNum),
	UNIQUE(postNum)
	);
