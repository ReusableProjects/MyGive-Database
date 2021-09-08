create table CardHistory(
    cardNum VARCHAR(45) NOT NULL,
    historyNum INT NOT NULL,
    organizationName VARCHAR(45) NOT NULL,
    dateTime datetime NOT NULL,
    price INT NOT NULL DEFAULT 0,
    
    PRIMARY KEY(cardNum, historyNum)
    );