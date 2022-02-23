CREATE TABLE if not exists tblExampleData (
	recordID int NOT NULL,
	recordText varchar(100),
	PRIMARY KEY (recordID)
);

INSERT IGNORE INTO tblExampleData (recordID,recordText)
VALUES (001,"This is record 1"),(002,"This is record 2"),(003,"This is record 3");