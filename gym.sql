CREATE DATABASE gym;

USE gym;

CREATE TABLE users(username VARCHAR(200), password VARCHAR(500), name VARCHAR(100), prof INT, street VARCHAR(100), city VARCHAR(50), phone VARCHAR(32), PRIMARY KEY(username));

CREATE TABLE plans(name VARCHAR(100),exercise VARCHAR(20),sets int,reps int, PRIMARY KEY(name));

CREATE TABLE receps(username VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references users(username));

CREATE TABLE trainors(username VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references users(username));

CREATE TABLE members(username VARCHAR(200), plan VARCHAR(100), trainor VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references users(username), FOREIGN KEY(plan) references plans(name), FOREIGN KEY(trainor) references trainors(username));

ALTER TABLE users ADD time TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

CREATE TABLE progress(username VARCHAR(200), date DATE, daily_result VARCHAR(200), time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,rate int, PRIMARY KEY(username, date), FOREIGN KEY(username) references members(username));

CREATE	 TABLE equip(name VARCHAR(20),count INT,PRIMARY KEY(name));

INSERT INTO users(username, password, street, city, phone, name, prof)
    VALUES('admin', '1234', 'Adarshnagar', 'Anantapur', '9666585361', 'Parameswar Kurakula', 1);

INSERT INTO plans(name, exercise, sets, reps)
    VALUES('500 per month','dribs',4,20);
INSERT INTO plans(name, exercise, sets, reps)
    VALUES('1000 per 3month','dribs',4,20);
INSERT INTO plans(name, exercise, sets, reps)
    VALUES('7000 per 5month','dribs',4,20);

INSERT INTO equip(name,count)
    VALUES('dumbles',5);
INSERT INTO equip(name,count)
    VALUES('treadmills',4);