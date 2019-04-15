CREATE TABLE info(username VARCHAR(200), password VARCHAR(500), name VARCHAR(100), prof INT, street VARCHAR(100), city VARCHAR(50), phone VARCHAR(32), PRIMARY KEY(username));

--CREATE TABLE members(username VARCHAR(200), plan VARCHAR(100), trainor VARCHAR(200), FOREIGN KEY(username) references info(username), PRIMARY KEY(username), FOREIGN KEY(trainor) references info(username));

CREATE TABLE plans(name VARCHAR(100),exercise VARCHAR(20),sets int,reps int, PRIMARY KEY(name));

CREATE TABLE receps(username VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username));

CREATE TABLE trainors(username VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username));

CREATE TABLE members(username VARCHAR(200), plan VARCHAR(100), trainor VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username), FOREIGN KEY(plan) references plans(name), FOREIGN KEY(trainor) references trainors(username));

ALTER TABLE info ADD time TIMESTAMP DEFAULT CURRENT_TIMESTAMP;--done for all tables

INSERT INTO info(username, password, name, prof, street, city, phone) VALUES('eswar_123', '$5$rounds=535000$ajR8hAzSoSF.NhEs$MaLn1dbnXq9eu2W5Ge3c1ScAS9960yLBFv3aU9zaxc0', 'Parameswar K', 1, 'Adarshnagar', 'Anantapur', 9666585361);--admin's password is eswar@259522

CREATE TABLE progress(username VARCHAR(200), date DATE, daily_result VARCHAR(200), time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,rate int, PRIMARY KEY(username, date), FOREIGN KEY(username) references members(username));

INSERT INTO info(username, password, street, city, phone, name, prof)
 VALUES('admin', '1234', 
 	'Adarshnagar', 'Anantapur', '9666585361', 'Parameswar Kurakula', 1);
 INSERT INTO plans(name, exercise, sets, reps)
 VALUES('500 per month','dribs',4,20);
 INSERT INTO plans(name)
 VALUES('1000 per 3month','dribs',4,20);
 INSERT INTO plans(name)
 VALUES('7000 per 5month','dribs',4,20);
 CREATE	 TABLE equip(name VARCHAR(20),count INT,PRIMARY KEY(name));
 INSERT INTO equip(name,count)
 VALUES('dumbles',5);
  INSERT INTO equip(name,count)
 VALUES('dildos',4);