String lastName     LASTNAME      '�������'
String firstName    FIRSTNAME     '���'
String secondName   SECONDNAME    '��������'
String rank         RANK          '������'
Date   birthday     BIRTHDAY      '���� ��������'
String placeOfBorn  PLACEOFBORN   '����� ��������'
String education    EDUCATION     '�����������'
String graduated    GRADUATED     '�������'
String speciality   SPECIALITY    '�������������'
String degree       DEGREE        '������ �������'
String foreigLang   FOREIGNLANG   '����������� �����'
Date   stMilitSer   STMILITSERV   '� ������ ������� � ��, ���'
Date   fnMilitSer   FNMILITSERV   '�� ����� ����� � ��, ���'
String abroad       ABROAD        '��� �� �� ��������'
String foreclosure  FORECLOSURE   '���������'
String election     ELECTION      '������� � ���������� �������'
String stateAwards  STATEAWARDS   '����� �� ����������'



CREATE TABLE PERSONAL (
    ID             INT PRIMARY KEY AUTO_INCREMENT,
    LASTNAME       VARCHAR(1000) DEFAULT ' ',    --'�������'
    FIRSTNAME      VARCHAR(1000) DEFAULT ' ',    --'���'
    SECONDNAME     VARCHAR(1000) DEFAULT ' ',    --'��������'
    PERSONALNUMBER VARCHAR(1000) DEFAULT ' ',    --'������ �����'
    RANK           VARCHAR(1000) DEFAULT ' ',    --'������'
    BIRTHDAY       DATE DEFAULT NULL,            --'���� ��������'
    PLACEOFBORN    VARCHAR(1000) DEFAULT ' ',    --'����� ��������'
    EDUCATION      VARCHAR(1000) DEFAULT ' ',    --'�����������'
    GRADUATED      VARCHAR(1000) DEFAULT ' ',    --'�������'
    SPECIALITY     VARCHAR(1500) DEFAULT ' ',    --'�������������'
    DEGREE         VARCHAR(1500) DEFAULT ' ',    --'������ �������'
    FOREIGNLANG    VARCHAR(1000) DEFAULT ' ',    --'����������� �����'
    ABROAD         VARCHAR(1500) DEFAULT ' ',    --'��� �� �� ��������'
    FORECLOSURE    VARCHAR(1500) DEFAULT ' ',    --'���������'
    ELECTION       VARCHAR(1000) DEFAULT ' ',    --'������� � ���������� �������'
    CALLOFDUTY     VARCHAR(1000) DEFAULT ' ',    --'����� ������'
    STATEAWARDS    VARCHAR(1500) DEFAULT ' ',    --'����� �� ����������'
    FIRED           VARCHAR(1500) DEFAULT ' ',    --'����������'
    WORKPLACE      VARCHAR(1500) DEFAULT ' ',    --'����� ������'
  created TIMESTAMP DEFAULT NOW()
)

������� ���� ������

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
