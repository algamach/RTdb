CREATE TABLE Users(
Id int IDENTITY(1,1) NOT NULL,
FirstName nvarchar(50) NOT NULL,
LastName nvarchar(50) NOT NULL,
FatherName nvarchar(50) NOT NULL,
UserName nvarchar(50) NOT NULL,
[Password] nvarchar(100) NOT NULL,
)

CREATE TABLE Organizations (
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Name] NVARCHAR(100)  NOT NULL,
);

ALTER TABLE Users
ADD OrgID INT,
FOREIGN KEY (OrgID) REFERENCES Organizations(Id);

CREATE TABLE Books (
    Id INT IDENTITY(1,1) NOT NULL,
    [Name] NVARCHAR(150)  NOT NULL,
);

INSERT INTO Organizations ([Name])
VALUES ('Татнефть');
INSERT INTO Organizations ([Name])
VALUES ('Новатэк');
INSERT INTO Organizations ([Name])
VALUES ('Газпромнефть');


INSERT INTO Users (LastName, FirstName, FatherName, UserName, [Password], OrgID)
VALUES ('Иванов', 'Иван', 'Иванович', 'vasya_pupkin', 'qweasd', 1);
INSERT INTO Users (LastName, FirstName, FatherName, UserName, [Password], OrgID)
VALUES ('Войтюк', 'Антон', 'Михайлович', 'anton16', 'adv8)ks', 1);
INSERT INTO Users (LastName, FirstName, FatherName, UserName, [Password], OrgID)
VALUES ('Халилов', 'Эмиль', 'Хамитович', 'e.halil', 'kazan01*', 3);
INSERT INTO Users (LastName, FirstName, FatherName, UserName, [Password], OrgID)
VALUES ('Костромина', 'Кристина', 'Васильевна', 'chr1st1no4ka', 'pass000word*', 2);
INSERT INTO Users (LastName, FirstName, FatherName, UserName, [Password], OrgID)
VALUES ('Шамсеев', 'Адель', 'Ильгизович', 'adel', 'qazwsxedc11', 2);
INSERT INTO Users (LastName, FirstName, FatherName, UserName, [Password], OrgID)
VALUES ('Ахметшина', 'Айсылу', 'Ильфатовна', 'as.ahmetshina', 'tat116kzn', 1);

INSERT INTO Books ([Name])
VALUES ('Добыча: Всемирная история борьбы за нефть, деньги и власть');
INSERT INTO Books ([Name])
VALUES ('В поисках энергии: Ресурсные войны, новые технологии и будущее энергетики');
INSERT INTO Books ([Name])
VALUES ('Нефтяной король: Секретная жизнь Марка Рича');
INSERT INTO Books ([Name])
VALUES ('SAUDI INC. История о том, как Саудовская Аравия стала одним из самых влиятельных государств');
INSERT INTO Books ([Name])
VALUES ('Колесо фортуны: Битва за нефть и власть в России');

/*
SELECT UserName, LastName, Users.FirstName, Organizations.[Name] as Organization
FROM Users
JOIN Organizations on Users.OrgId=Organizations.Id
ORDER BY Organization
*/
