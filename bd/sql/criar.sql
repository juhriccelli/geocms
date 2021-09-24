CREATE TABLE `pais` (
  `paisID` int(11) NOT NULL PRIMARY KEY,
  `nome` varchar(60) DEFAULT NULL,
  `nome_pt` varchar(60) DEFAULT NULL,
  `sigla` varchar(2) DEFAULT NULL
)

CREATE TABLE `arena` (
  `arenaID` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `paisID` int(11) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `paisID` FOREIGN KEY REFERENCES pais(`paisID`)
)

CREATE TABLE `clube` (
  `clubeID` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `sigla` varchar(5) DEFAULT NULL,
  `paisID` int(11) DEFAULT NULL,
  `arena` int(11) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `paisID` FOREIGN KEY REFERENCES pais(`paisID`),
  `arenaID` FOREIGN KEY REFERENCES arena(`arenaID`)
)

CREATE TABLE `competicao` (
  `competicaoID` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `nome_oficial` varchar(255) DEFAULT NULL,
  `zoom_lat` varchar(255) DEFAULT NULL,
  `zoom_long` varchar(255) DEFAULT NULL,
  `zoom` int(11) DEFAULT NULL
)


CREATE TABLE `nba` (
  `nbaID` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `clubeID` int(11) DEFAULT NULL,
  `competicaoID` int(11) DEFAULT NULL,
  `inicio` int(4) DEFAULT NULL,
  `fim` int(4) DEFAULT NULL,
  `atual` varchar(1) DEFAULT NULL,
  `clubeID` FOREIGN KEY REFERENCES clube(`clubeID`),
  `competicaoID` FOREIGN KEY REFERENCES competicao(`competicaoID`),
)
