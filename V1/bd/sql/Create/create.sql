CREATE TABLE pais (
  id_pais int(11) NOT NULL PRIMARY KEY,
  nome varchar(60) DEFAULT NULL,
  nome_pt varchar(60) DEFAULT NULL,
  sigla varchar(2) DEFAULT NULL
)

CREATE TABLE arena (
  id_arena int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome varchar(255) DEFAULT NULL,
  id_pais int(11) DEFAULT NULL,
  latitude varchar(255) DEFAULT NULL,
  longitude varchar(255) DEFAULT NULL,
  FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
)

CREATE TABLE clube (
  id_clube int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome varchar(255) DEFAULT NULL,
  sigla varchar(5) DEFAULT NULL,
  id_pais int(11) DEFAULT NULL,
  id_arena int(11) DEFAULT NULL,
  imagem varchar(255) DEFAULT NULL,
  FOREIGN KEY (id_pais) REFERENCES pais(id_pais),
  FOREIGN KEY (id_arena) REFERENCES arena(id_arena)
)

CREATE TABLE competicao (
  id_competicao int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome varchar(50) DEFAULT NULL,
  nome_oficial varchar(255) DEFAULT NULL,
  zoom_lat varchar(255) DEFAULT NULL,
  zoom_long varchar(255) DEFAULT NULL,
  zoom int(11) DEFAULT NULL,
  imagem varchar(255) DEFAULT NULL
)


CREATE TABLE nba (
  id_nba int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_clube int(11) DEFAULT NULL,
  id_competicao int(11) DEFAULT NULL,
  inicio int(4) DEFAULT NULL,
  fim int(4) DEFAULT NULL,
  atual varchar(1) DEFAULT NULL,
  FOREIGN KEY (id_clube) REFERENCES clube(id_clube),
  FOREIGN KEY (id_competicao) REFERENCES competicao(id_competicao)
)
