create DATABASE WargrooveDB
CREATE TABLE [dbo].[Unidade]
(
  [Id_Unidade] INT NOT NULL PRIMARY KEY identity(1,1),
  [Nome_unidade] VARCHAR (64) not NULL,
  [Custo] tinyint,
  [Movimento] TINYINT,
  [Range] tinyint,
  [Visao] tinyint,
  [Id_Faccao] INT REFERENCES dbo.Faction (Id_Faccao),
  [Id_Edificio] int FOREIGN KEY  REFERENCES dbo.Edificios (Id_Edificio),
  [Eficaz_Contra] VARCHAR(64) FOREIGN KEY REFERENCES dbo.Unidade (Id_Unidade),
  [Vulneravel_Contra] VARCHAR (64) FOREIGN KEY REFERENCES dbo.unidade (Id_Unidade)
);

Create TABLE [dbo].[Faction]
(
  [Id_Faccao] int not null primary key identity(1,1),
  [Nome_Faccao] VARCHAR(64) not NULL
);

create table [dbo] . [Edificios]
(
  [Id_Edificio] int PRIMARY key identity(1,1) not null,
  [Nome_Edificio] VARCHAR (64)
);
