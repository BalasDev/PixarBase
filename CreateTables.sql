/*Table ROLES*/

CREATE TABLE IF NOT EXISTS ROLES (
  ID int(11) NOT NULL AUTO_INCREMENT,
  NAME varchar(1000) DEFAULT ' ',
  PRIMARY KEY (ID) 
);

/*DUMP*/
INSERT INTO ROLES (ID, NAME) VALUES
(1, 'ADMIN'),
(2, 'USER');

/*Table ROVD*/

CREATE TABLE IF NOT EXISTS ROVD (
  ID int(11) NOT NULL AUTO_INCREMENT,
  NAME varchar(1000) DEFAULT ' ',
  PRIMARY KEY (ID) 
);

/*DUMP*/
INSERT INTO ROVD (ID, NAME) VALUES
(1, 'УВД'),
(2, 'Железнодорожный'),
(3, 'Новобелецкий'),
(4, 'Центральный'),
(5, 'Советский'),
(6, 'Гомельский'),
(7, 'Брагинский'),
(8, 'Буда-Кошелевский'),
(9, 'Ветковский'),
(10,'Добрушский'),
(11,'Ельский'),
(12,'Житковичский'),
(13,'Жлобинский'),
(14,'Калинковичский'),
(15,'Кормянский'),
(16,'Лельчицкий'),
(17,'Лоевский'),
(18,'Мозырский'),
(19,'Наровлянский'),
(20,'Октябрьский'),
(21,'Петриковский'),
(22,'Речицкий'),
(23,'Рогачевский'),
(24,'Светлогорский'),
(25,'Хойникский'),
(26,'Чечерский'),
(27,'Полк ППСМ'),
(28,'БДПС'),
(29,'Гомельский ОВДТ')
;   

/*Table PERSONAL*/

CREATE TABLE IF NOT EXISTS PERSONAL (
  ID int(11) NOT NULL AUTO_INCREMENT,
  LASTNAME varchar(650) DEFAULT ' ',
  FIRSTNAME varchar(650) DEFAULT ' ',
  SECONDNAME varchar(1000) DEFAULT ' ',
  PERSONALNUMBER varchar(1000) DEFAULT ' ',
  RANK varchar(1000) DEFAULT ' ',
  BIRTHDAY date DEFAULT NULL,
  STRBIRTHDAY varchar(1000) DEFAULT ' ',
  PLACEOFBORN varchar(1000) DEFAULT ' ',
  EDUCATION varchar(1000) DEFAULT ' ',
  GRADUATED varchar(1000) DEFAULT ' ',
  SPECIALITY varchar(1500) DEFAULT ' ',
  DEGREE varchar(1500) DEFAULT ' ',
  FOREIGNLANG varchar(1000) DEFAULT ' ',
  ABROAD varchar(1500) DEFAULT ' ',
  FORECLOSURE varchar(1500) DEFAULT ' ',
  ELECTION varchar(1000) DEFAULT ' ',
  CALLOFDUTY varchar(1000) DEFAULT ' ',
  STATEAWARDS varchar(1500) DEFAULT ' ',
  FIRED varchar(1500) DEFAULT ' ',
  WORKPLACE varchar(1500) DEFAULT ' ',
  ROVDID int(11) NOT NULL,
  CREATED timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CREATEDBY int(11) NOT NULL,
  EDITED date DEFAULT NULL,
  EDITEDBY int(11) DEFAULT NULL,
  PRIMARY KEY (ID)   
);

/*FOREIGN KEYS*/
ALTER TABLE PERSONAL
ADD CONSTRAINT personal_ibfk_1 FOREIGN KEY (ROVDID) REFERENCES rovd (ID);



/*Table USERS*/

CREATE TABLE IF NOT EXISTS USERS (
  ID int(11) NOT NULL AUTO_INCREMENT,
  LASTNAME varchar(1000) DEFAULT ' ',
  FIRSTNAME varchar(1000) DEFAULT ' ',
  SECONDNAME varchar(1000) DEFAULT ' ',
  LOGIN varchar(1000) DEFAULT ' ',
  PASSWORD varchar(1000) DEFAULT ' ',
  IP varchar(1000) DEFAULT ' ',
  ROVDID int(11) DEFAULT NULL,
  ROLEID int(11) DEFAULT NULL,
  PRIMARY KEY (ID) 
) ;

/*DUMP*/
INSERT INTO USERS (ID, LASTNAME, FIRSTNAME, SECONDNAME, LOGIN, PASSWORD, IP, ROVDID, ROLEID) VALUES
(1, 'a', 'a', 'a', 'admin', 'admin', '127.0.0.1', 1, 1),
(2, 'b', 'b', 'b', 'b', 'b', '127.0.0.1', 1, 1);

/*FOREIGN KEYS*/
ALTER TABLE USERS
ADD CONSTRAINT users_ibfk_1 FOREIGN KEY (ROLEID) REFERENCES roles (ID);
ALTER TABLE USERS
ADD CONSTRAINT users_ibfk_2 FOREIGN KEY (ROVDID) REFERENCES rovd (ID);




