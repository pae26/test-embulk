USE [master]
GO

CREATE DATABASE [testdb]
GO

USE [testdb]
GO

CREATE TABLE users_sqlserver(
    id_sqlserver INT PRIMARY KEY,
    name_sqlserver VARCHAR(100) NOT NULL,
    jender_sqlserver INT NOT NULL
)
GO

INSERT INTO users_sqlserver(
    id_sqlserver, name_sqlserver, jender_sqlserver
)
VALUES(1, 'hoge', 1);
INSERT INTO users_sqlserver(
    id_sqlserver, name_sqlserver, jender_sqlserver
)
VALUES(2, 'fuga', 3);
INSERT INTO users_sqlserver(
    id_sqlserver, name_sqlserver, jender_sqlserver
)
VALUES(3, 'piyo', 2);
INSERT INTO users_sqlserver(
    id_sqlserver, name_sqlserver, jender_sqlserver
)
GO
