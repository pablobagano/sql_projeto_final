/*
Criando o banco de dados charts
*/

-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS charts;

-- Definir como padrão do MySQL Workbench
USE charts;


-- Criar a tabela Sub Gêneros
CREATE TABLE IF NOT EXISTS charts.sub_genero (
	id_subgenero INT AUTO_INCREMENT NOT NULL,
    nome_subgenero VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_subgenero),
    UNIQUE (nome_subgenero)
)
COMMENT "Tabela que armazena os sub gêneros de rock 'n roll"; 

-- Criar a tabela de Bandas
CREATE TABLE IF NOT EXISTS charts.bandas (
	id_banda INT AUTO_INCREMENT NOT NULL,
    nome_banda VARCHAR(100) NOT NULL ,
    discografia LONGTEXT,
    integrantes TEXT,
    em_atividade INT,
    id_subgenero INT NOT NULL,
    PRIMARY KEY (id_banda),
    UNIQUE (nome_banda),
    FOREIGN KEY (id_subgenero) REFERENCES sub_genero(id_subgenero)
)
COMMENT "Tabela que armazena dados sobre as bandas";


-- Criar a tabela de albuns
CREATE TABLE IF NOT EXISTS charts.albuns (
	id_album INT NOT NULL AUTO_INCREMENT,
    ano_lancamento DATE,
    id_banda INT NOT NULL,
    nome_banda VARCHAR(100) NOT NULL,
    nome_album VARCHAR(100) NOT NULL,
    billboard INT,
    copias_vendidas INT,
    id_subgenero INT NOT NULL,
    PRIMARY KEY(id_album),
    FOREIGN KEY (id_subgenero) REFERENCES sub_genero(id_subgenero),
    FOREIGN KEY (id_banda) REFERENCES bandas (id_banda), 
    FOREIGN KEY (nome_banda) REFERENCES bandas(nome_banda)
)
COMMENT "Tabela que armazena dados dos álbuns";

-- Criar a tabela de Músicos
CREATE TABLE IF NOT EXISTS charts.musicos (
	id_musico INT AUTO_INCREMENT NOT NULL,
    id_banda INT NOT NULL,
    id_album INT NOT NULL,
    nome_banda VARCHAR(100) NOT NULL,
    nome_musico VARCHAR(255) NOT NULL,
    instrumentos VARCHAR(255),
    data_nascimento DATE,
    em_atividade INT,
    PRIMARY KEY(id_musico),
    FOREIGN KEY (id_album) REFERENCES albuns(id_album),
    FOREIGN KEY (id_banda) REFERENCES bandas(id_banda),
    FOREIGN KEY (nome_banda) REFERENCES bandas(nome_banda)
    
) 
COMMENT "Tabela que armazena dados dos músicos";


-- Criar a tabela Produção
CREATE TABLE IF NOT EXISTS charts.producao(
id_album INT AUTO_INCREMENT NOT NULL,
id_banda INT NOT NULL,
id_subgenero INT NOT NULL,
produtor VARCHAR(100) NOT NULL,
estudio VARCHAR(100) NOT NULL,
local_estudio VARCHAR(100) NOT NULL,
numero_faixas INT NOT NULL,
FOREIGN KEY (id_album) REFERENCES albuns(id_album),
FOREIGN KEY (id_banda) REFERENCES bandas(id_banda),
FOREIGN KEY (id_subgenero) REFERENCES sub_genero(id_subgenero)
)
COMMENT "Tabela que armazena dados de produção dos álbuns";


