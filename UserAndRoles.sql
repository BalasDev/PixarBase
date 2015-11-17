CREATE TABLE ROLES
(
    ID             INT PRIMARY KEY AUTO_INCREMENT,
    NAME       VARCHAR(1000) DEFAULT ' '
)

CREATE TABLE USERS (
    ID             INT PRIMARY KEY AUTO_INCREMENT,
    LASTNAME       VARCHAR(1000) DEFAULT ' ',    
    FIRSTNAME      VARCHAR(1000) DEFAULT ' ',    
    SECONDNAME     VARCHAR(1000) DEFAULT ' ',   
    LOGIN          VARCHAR(1000) DEFAULT ' ',    
    PASSWORD       VARCHAR(1000) DEFAULT ' ',   
    IP             VARCHAR(1000) DEFAULT ' ', 
    ROLEID         INT
)

insert into roles 
values (1,'ADMIN');
insert into roles
values (2,'USER');
insert into users 
values (1,'a','a','a','admin','admin','192.168.1.1',1);

ALTER TABLE users  ADD CONSTRAINT users_ibfk_1 FOREIGN KEY (ROLEID) REFERENCES ROLES (id);