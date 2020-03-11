DROP TABLE person;

DROP TABLE company;

DROP TABLE city;

CREATE TABLE city (
    ID number,
    CityName varchar(10) PRIMARY KEY,
    Area varchar(10)
);

CREATE TABLE company(
    ID number,
    CompanyName varchar(10) PRIMARY KEY,
    address varchar(10)
);

CREATE TABLE person (
    PersonID int PRIMARY KEY,
    LastName varchar(10),
    FirstName varchar(10),
    Address varchar(10),
    CityName varchar2(10),
    CompanyName varchar(10),
    FOREIGN KEY (CityName) REFERENCES city,
    FOREIGN KEY (CompanyName) REFERENCES company
);

INSERT INTO
    city (CityName, Area)
VALUES
    ('Kolkata', 'INDIA');

INSERT INTO
    city (CityName, Area)
VALUES
    ('Dhaka', 'BD');

INSERT INTO
    city (CityName, Area)
VALUES
    ('Khulna', 'BD');

INSERT INTO
    city (CityName, Area)
VALUES
    ('Bogra', 'BD');

INSERT INTO
    company (CompanyName, address)
VALUES
    ('MIT', 'BD');

INSERT INTO
    company (CompanyName, address)
VALUES
    ('GOOGLE', 'US');

INSERT INTO
    company (CompanyName, address)
VALUES
    ('SE', 'BD');

INSERT INTO
    company (CompanyName, address)
VALUES
    ('MS', 'BD');

INSERT INTO
    person (PersonID, CityName, CompanyName)
VALUES
    (0, 'Kolkata', 'MIT');

INSERT INTO
    person (PersonID, CityName, CompanyName)
VALUES
    (1, 'Dhaka', 'MS');

INSERT INTO
    person (PersonID, CityName, CompanyName)
VALUES
    (2, 'Khulna', 'GOOGLE');

INSERT INTO
    person (PersonID, CityName, CompanyName)
VALUES
    (3, 'Kolkata', 'SE');

INSERT INTO
    person (PersonID, CityName, CompanyName)
VALUES
    (4, 'Bogra', 'MIT');

INSERT INTO
    city (CityName, Area)
VALUES
    ('2.', 'INDIA');

SELECT
    *
FROM
    city
WHERE
    REGEXP_LIKE(CityName,  '\d.');