USE GamesList;

DROP TABLE IF EXISTS AllGames
DROP TABLE IF EXISTS Platform
DROP TABLE IF EXISTS GamesOnPlatform

CREATE TABLE AllGames(
  ID int IDENTITY(1,1) PRIMARY KEY,
  Title nvarchar(255) NOT NULL,
  Developer nvarchar(255),
  AnyPerc bit NOT NULL,
  HundredPerc bit NOT NULL,
  HasExtra bit NOT NULL,
  ExtraPerc bit NOT NULL
)

CREATE TABLE Platform(
  ID int IDENTITY(1,1) PRIMARY KEY,
  Title nvarchar(255) NOT NULL,
  Company nvarchar(255) NOT NULL,
  AmountOfGames int DEFAULT 0
)

CREATE TABLE GamesOnPlatform(
  GamesID int NOT NULL,
  GameTitle nvarchar(255) NOT NULL,
  PlatformTitle nvarchar(255) NOT NULL,
  PlatformID int NOT NULL,

  CONSTRAINT GamesOnPlatformGamesIdFK
  FOREIGN KEY (GamesID)
  REFERENCES AllGames(ID)
    ON UPDATE CASCADE
    ON DELETE CASCADE,

  CONSTRAINT GamesOnPlatformPlatformIdFK
  FOREIGN KEY (PlatformID)
  REFERENCES Platform(ID)
    ON UPDATE CASCADE
    ON DELETE CASCADE
)

