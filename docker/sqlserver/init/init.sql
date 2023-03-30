USE master
GO

CREATE DATABASE db_sqlserver
GO

USE db_sqlserver
GO

CREATE TABLE users_sqlserver(
    id_sqlserver INT NOT NULL,
    name_sqlserver VARCHAR(30) NOT NULL,
    gender_sqlserver INT NOT NULL
) ON [PRIMARY]
GO

INSERT INTO users_sqlserver(id_sqlserver, name_sqlserver, gender_sqlserver) VALUES(1, 'hoge', 1)
INSERT INTO users_sqlserver(id_sqlserver, name_sqlserver, gender_sqlserver) VALUES(2, 'fuga', 3)
INSERT INTO users_sqlserver(id_sqlserver, name_sqlserver, gender_sqlserver) VALUES(3, 'piyo', 2)
GO
