CREATE DATABASE game

USE game

CREATE TABLE Achivments(
	Ach_id int IDENTITY(1,1),
	Ach_name varchar (100) NOT NULL,
	PRIMARY KEY(Ach_id)
);

CREATE TABLE "Level"(
	level_id int IDENTITY(1,1),
	cont_lvl int,
	poin_lvl int NOT NULL,
	PRIMARY KEY(level_id)
);

CREATE TABLE Avatar(
	avatar_id int IDENTITY(1,1),
	vid varchar (50),
	"path" varchar(255),
	color varchar(100)
	PRIMARY KEY(avatar_id)
);

CREATE TABLE Users(
	[user_id] int IDENTITY(1,1),
	player_name varchar(255),
	email varchar(255),
	pass varchar(255),
	avatar_id int FOREIGN KEY REFERENCES Avatar(avatar_id),
	level_id int FOREIGN KEY REFERENCES Level(level_id),
	ach_id int FOREIGN KEY REFERENCES Achivments(ach_id)
);

INSERT INTO Achivments(Ach_name) VALUES ('Успешно пройти обучение')
INSERT INTO Achivments(Ach_name) VALUES ('Погибнуть 5 раз на одном уровне')
INSERT INTO Achivments(Ach_name) VALUES ('Ваш первый побежденный враг!')
INSERT INTO Achivments(Ach_name) VALUES ('Выживший')
INSERT INTO Achivments(Ach_name) VALUES ('Самый быстрый!')
INSERT INTO Achivments(Ach_name) VALUES ('Самый медленный!')
INSERT INTO Achivments(Ach_name) VALUES ('Поменять аватар')



INSERT INTO [Level](poin_lvl, cont_lvl) VALUES ('10', 0)
INSERT INTO [Level](poin_lvl, cont_lvl) VALUES ('15', 0)
INSERT INTO [Level](poin_lvl, cont_lvl) VALUES ('9', 0)
INSERT INTO [Level](poin_lvl, cont_lvl) VALUES ('13', 0)
INSERT INTO [Level](poin_lvl, cont_lvl) VALUES ('14', 0)
INSERT INTO [Level](poin_lvl, cont_lvl) VALUES ('17', 0)
INSERT INTO [Level](poin_lvl, cont_lvl) VALUES ('19', 0)
INSERT INTO [Level](poin_lvl, cont_lvl) VALUES ('25', 0)

INSERT INTO [Level](poin_lvl, cont_lvl) VALUES ('35', 0)
INSERT INTO [Level](poin_lvl, cont_lvl) VALUES ('40', 0)
INSERT INTO [Level](poin_lvl, cont_lvl) VALUES ('33', 0)
INSERT INTO [Level](poin_lvl, cont_lvl) VALUES ('28', 0)
INSERT INTO [Level](poin_lvl, cont_lvl) VALUES ('45', 0)

INSERT INTO Avatar(color, vid) VALUES ('Белый', 'Цвет')
INSERT INTO Avatar(color, vid) VALUES ('Черный', 'Цвет')
INSERT INTO Avatar(color, vid) VALUES ('Красный', 'Цвет')
INSERT INTO Avatar(color, vid) VALUES ('Синий', 'Цвет')
INSERT INTO Avatar(color, vid) VALUES ('Желтый', 'Цвет')
INSERT INTO Avatar(color, vid) VALUES ('Зеленый', 'Цвет')
INSERT INTO Avatar(color, vid) VALUES ('Голубой', 'Цвет')
INSERT INTO Avatar(color, vid) VALUES ('Розовый', 'Цвет')
INSERT INTO Avatar(color, vid) VALUES ('Периковый', 'Цвет')
INSERT INTO Avatar(color, vid) VALUES ('Оранжевый', 'Цвет')

INSERT INTO Avatar(path, vid) VALUES ('D:\game\images\cat', 'Изображение')
INSERT INTO Avatar(path, vid) VALUES ('D:\game\images\dog', 'Изображение')
INSERT INTO Avatar(path, vid) VALUES ('D:\game\images\funcat', 'Изображение')
INSERT INTO Avatar(path, vid) VALUES ('D:\game\images\fox', 'Изображение')
INSERT INTO Avatar(path, vid) VALUES ('D:\game\images\character', 'Изображение')
INSERT INTO Avatar(path, vid) VALUES ('D:\game\images\hero', 'Изображение')
INSERT INTO Avatar(path, vid) VALUES ('D:\game\images\fire', 'Изображение')
INSERT INTO Avatar(path, vid) VALUES ('D:\game\images\hero2', 'Изображение')
INSERT INTO Avatar(path, vid) VALUES ('D:\game\images\coolcat', 'Изображение')
INSERT INTO Avatar(path, vid) VALUES ('D:\game\images\bigcat', 'Изображение')

INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'ksysha','m.ksysha@mail.ru', '1fee23', 1, NULL, NULL)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'nastya','nast.voz@mail.ru', '045hj68', 2, NULL, NULL)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'pasha','pasha.ag@mail.ru', '45f43fh35', 3, NULL, NULL)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'nikita','niki.gede@mail.ru', '543f21hgf05', 4, NULL, NULL)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'aimankaa','aiman.zysyp@mail.ru', '5h4307h', 5, NULL, NULL)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'lera','eliz.lera@mail.ru', '0f7852h7', 6, NULL, NULL)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'best_player','im.best@mail.ru', '207fh72', 7, NULL, NULL)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'sashok','kalinovs.sasha@mail.ru', '70656', 8, NULL, NULL)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'nagibator','nagib.d300fs@mail.ru', '676786hf7', 9, NULL, NULL)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'user','ifdf.fdfd@mail.ru', '78gn05638', 10, NULL, NULL)

INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'nastuhasss','karabas.barabas3636@gmail.com', '46646bbv', 11, 7, 6)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'ksuhasss','kaka.puka@mail.ru', '565hrg6', 12, 6, 7)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'katuhasss','dedka.babka@mail.ru', '4564gfd65', 1, 8, 7)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'ulizuhasss','rfn.if.fdj@mail.ru', '5645hjhd66', 7, 5, 5)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'glebasss','xleb.gleb@mail.ru', '456eko9', 15, 3, 4)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'Veddien','ved.dien@mail.ru', 'vbgfjh5678b', 20, 7, 3)
INSERT INTO Users(player_name, email, pass, avatar_id, level_id, ach_id) VALUES (
'agaricaceae','agarica.ceae@mail.ru', 'ghnfjbj56', 16, 5, 5)

select * from Achivments
select * from Avatar
select * from [Level]
select * from Users

UPDATE Users SET level_id = 5, ach_id = 6
WHERE [user_id] = 2

UPDATE Users SET level_id = 3, ach_id = 5
WHERE [user_id] = 3

UPDATE Users SET level_id = 1, ach_id = 1
WHERE [user_id] = 4

UPDATE Users SET level_id = 2, ach_id = 2
WHERE [user_id] = 5

UPDATE Users SET level_id = 4, ach_id = 4
WHERE [user_id] = 6

UPDATE Users SET level_id = 7, ach_id = 5
WHERE [user_id] = 7

UPDATE Users SET level_id = 4, ach_id = 1
WHERE [user_id] = 8

UPDATE Users SET level_id = 8, ach_id = 3
WHERE [user_id] = 9

UPDATE Users SET level_id = 3, ach_id = 6
WHERE [user_id] = 10

UPDATE Users SET level_id = 1, ach_id = 2
WHERE [user_id] = 11

--Вывод всей инофрмации о пользователе
SELECT * FROM Users
--Вывод всей инофрмации о достижениях
SELECT * FROM Achivments
--Достижение до которого дошел пользователь
SELECT player_name, ach_name
FROM Users, Achivments
where Users.ach_id = Achivments.Ach_id
--Уровень до которого дошел пользователь 
SELECT player_name, Level.level_id
FROM Users, [Level]
where Users.level_id = Level.level_id
--Пользователи, которые прошли 3 и 5 уровни
SELECT player_name, level_id
FROM Users
WHERE Users.level_id = 5
OR Users.level_id = 3
--Пользователи,  у которых есть достижение "Самый медленный"
SELECT player_name, Achivments.Ach_name
FROM Users, Achivments
WHERE Users.ach_id = Achivments.ach_id
AND Users.ach_id = 6
--Пользователи с черной аватаркой
SELECT player_name, color
FROM Users, Avatar
WHERE Users.avatar_id = Avatar.avatar_id
AND Avatar.color = 'Черный'
--Пользователь, у которого пароль только из цифр
SELECT player_name, pass
FROM Users
WHERE  ISNUMERIC(pass) = 1
--Пользователь с аватаркой cat
SELECT player_name
FROM Users, Avatar
WHERE Users.avatar_id = Avatar.avatar_id
AND Avatar.avatar_id = 1










