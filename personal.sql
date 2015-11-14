String lastName     LASTNAME      'Фамилия'
String firstName    FIRSTNAME     'Имя'
String secondName   SECONDNAME    'Отчество'
String rank         RANK          'Звание'
Date   birthday     BIRTHDAY      'Дата рождения'
String placeOfBorn  PLACEOFBORN   'Место рождения'
String education    EDUCATION     'Образование'
String graduated    GRADUATED     'Окончил'
String speciality   SPECIALITY    'Специальность'
String degree       DEGREE        'Учёная степень'
String foreigLang   FOREIGNLANG   'Иностранные языки'
Date   stMilitSer   STMILITSERV   'С какого времени в ВС, КГБ'
Date   fnMilitSer   FNMILITSERV   'По какое время в ВС, КГБ'
String abroad       ABROAD        'Был ли за границей'
String foreclosure  FORECLOSURE   'Взыскания'
String election     ELECTION      'Участие в выборочных органах'
String stateAwards  STATEAWARDS   'Имеет ли госнаграды'



CREATE TABLE PERSONAL (
    ID             INT PRIMARY KEY AUTO_INCREMENT,
    LASTNAME       VARCHAR(1000) DEFAULT ' ',    --'Фамилия'
    FIRSTNAME      VARCHAR(1000) DEFAULT ' ',    --'Имя'
    SECONDNAME     VARCHAR(1000) DEFAULT ' ',    --'Отчество'
    PERSONALNUMBER VARCHAR(1000) DEFAULT ' ',    --'Личный номер'
    RANK           VARCHAR(1000) DEFAULT ' ',    --'Звание'
    BIRTHDAY       DATE DEFAULT NULL,            --'Дата рождения'
    PLACEOFBORN    VARCHAR(1000) DEFAULT ' ',    --'Место рождения'
    EDUCATION      VARCHAR(1000) DEFAULT ' ',    --'Образование'
    GRADUATED      VARCHAR(1000) DEFAULT ' ',    --'Окончил'
    SPECIALITY     VARCHAR(1500) DEFAULT ' ',    --'Специальность'
    DEGREE         VARCHAR(1500) DEFAULT ' ',    --'Учёная степень'
    FOREIGNLANG    VARCHAR(1000) DEFAULT ' ',    --'Иностранные языки'
    ABROAD         VARCHAR(1500) DEFAULT ' ',    --'Был ли за границей'
    FORECLOSURE    VARCHAR(1500) DEFAULT ' ',    --'Взыскания'
    ELECTION       VARCHAR(1000) DEFAULT ' ',    --'Участие в выборочных органах'
    CALLOFDUTY     VARCHAR(1000) DEFAULT ' ',    --'Место службы'
    STATEAWARDS    VARCHAR(1500) DEFAULT ' ',    --'Имеет ли госнаграды'
    FIRED           VARCHAR(1500) DEFAULT ' ',    --'Увольнения'
    WORKPLACE      VARCHAR(1500) DEFAULT ' ',    --'Место работы'
  created TIMESTAMP DEFAULT NOW()
)

Выполни этот скрипт

create USER pixar@localhost identified BY 'pixar';
GRANT usage ON *.* TO pixar@localhost identified BY 'pixar';
CREATE DATABASE IF NOT EXISTS pixar;
GRANT ALL privileges ON pixar.* TO pixar@localhost;
USE pixar;
CREATE TABLE personal
(
    ID             INT PRIMARY KEY AUTO_INCREMENT,
    LASTNAME       VARCHAR(1000) DEFAULT ' ',
    FIRSTNAME      VARCHAR(1000) DEFAULT ' ',
    SECONDNAME     VARCHAR(1000) DEFAULT ' ',
    PERSONALNUMBER VARCHAR(1000) DEFAULT ' ',
    RANK           VARCHAR(1000) DEFAULT ' ',
    BIRTHDAY       DATE DEFAULT NULL,
    STRBIRTHDAY    VARCHAR(1000) DEFAULT ' ',
    PLACEOFBORN    VARCHAR(1000) DEFAULT ' ',
    EDUCATION      VARCHAR(1000) DEFAULT ' ',
    GRADUATED      VARCHAR(1000) DEFAULT ' ',
    SPECIALITY     VARCHAR(1500) DEFAULT ' ',
    DEGREE         VARCHAR(1500) DEFAULT ' ',
    FOREIGNLANG    VARCHAR(1000) DEFAULT ' ',
    ABROAD         VARCHAR(1500) DEFAULT ' ',
    FORECLOSURE    VARCHAR(1500) DEFAULT ' ',
    ELECTION       VARCHAR(1000) DEFAULT ' ',
    CALLOFDUTY     VARCHAR(1000) DEFAULT ' ',
    STATEAWARDS    VARCHAR(1500) DEFAULT ' ',
    FIRED           VARCHAR(1500) DEFAULT ' ',
    WORKPLACE      VARCHAR(1500) DEFAULT ' ',
    ROVD            VARCHAR(100) DEFAULT ' ',
  created TIMESTAMP DEFAULT NOW()
)

ALTER TABLE `personal` ADD `FIRED` VARCHAR(1000) DEFAULT ' ' ;
