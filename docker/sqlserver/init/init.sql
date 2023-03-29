USE master
GO

CREATE DATABASE db_sqlserver
GO

USE db_sqlserver
GO

CREATE TABLE usersSqlserver(
    idSqlserver INT NOT NULL,
    nameSqlserver VARCHAR(100) NOT NULL,
    genderSqlserver INT NOT NULL
) ON [PRIMARY]
GO

DELETE FROM usersSqlserver
INSERT INTO usersSqlserver(idSqlserver, nameSqlserver, genderSqlserver) VALUES(1, 'hoge', 1)
INSERT INTO usersSqlserver(idSqlserver, nameSqlserver, genderSqlserver) VALUES(2, 'fuga', 3)
INSERT INTO usersSqlserver(idSqlserver, nameSqlserver, genderSqlserver) VALUES(3, 'piyo', 2)
GO
