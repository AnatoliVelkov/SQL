CREATE TABLE Users
(
Id BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
Username VARCHAR(30) NOT NULL UNIQUE,
Password NVARCHAR(26) NOT NULL,
ProfilePicture VARBINARY(8000),
LastLoginTime DATETIME,
IsDeleted BIT
)
INSERT INTO Users (Username, Password, ProfilePicture, LastLoginTime, IsDeleted)
VALUES ('Mitko', 'dasaznai123456789', null, '2015-12-08', 'true'),
('Jelqzko', 'dasaznai123789', null, '2015-12-08', 'true'),
('Jivko', 'dasaznai12789', null, '2011-12-11', 'false'),
('Yordan', 'dasaznai12346789', null, '2014-12-26', 'false'),
('Kostadin', 'dasaznai1234567', null, '2015-12-14', 'true')