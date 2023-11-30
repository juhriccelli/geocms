CREATE TABLE paises (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE estados (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    pais_id INT,
    FOREIGN KEY (pais_id) REFERENCES paises(id)
);

CREATE TABLE cidades (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    estado_id INT,
    FOREIGN KEY (estado_id) REFERENCES estados(id)
);

CREATE TABLE clubes (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade_id INT,
    FOREIGN KEY (cidade_id) REFERENCES cidades(id)
    -- Adicione mais campos conforme necessário
);

CREATE TABLE estadios (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    cidade_id INT,
    FOREIGN KEY (cidade_id) REFERENCES cidades(id)
    -- Adicione mais campos conforme necessário
);
