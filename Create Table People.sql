CREATE TABLE People(
Id BIGINT PRIMARY KEY IDENTITY (1,1) NOT NULL,
Name VARCHAR(200) NOT NULL,
Picture VARBINARY(MAX),
Height DECIMAL (12, 2),
Weight DECIMAL (12, 2),
Gender CHAR(1) NOT NULL,
Birthdate TIME,
Biography VARCHAR(MAX) NULL
)

INSERT INTO People(Name, Picture, Height, Weight, Gender, Birthdate, Biography)
VALUES
('Anatoli Ivanov Velkov', null, null, null,'m','1987-12-24',null ),
('Ivan Ivanov Velkov', null, null, null,'m','1987-12-24',null ),
('Petkan Ivanov Velkov', null, null, null,'m','1987-12-24',null ),
('Dragan Ivanov Velkov', null, null, null,'m','1987-12-24',null ),
('Simeon Ivanov Velkov', null, null, null,'m','1987-12-24',null )