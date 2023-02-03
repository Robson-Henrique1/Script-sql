create database bisa_teste;
use bisa_teste;

CREATE TABLE Tipos_Entradas (
    id_tipo_entrada INT PRIMARY KEY NOT NULL auto_increment,
    nome VARCHAR(255)
);

CREATE TABLE Entradas (
    id_entrada INT PRIMARY KEY NOT NULL auto_increment,
    id_tipo_entrada INT,
    descricao VARCHAR(255),
    data_hora_entrada DATETIME,
    FOREIGN KEY (id_tipo_entrada) REFERENCES Tipos_Entradas(id_tipo_entrada)
);

CREATE TABLE Tipos_Saidas (
    id_tipo_saida INT PRIMARY KEY NOT NULL auto_increment,
    nome VARCHAR(255)
);

CREATE TABLE Saidas (
    id_saida INT PRIMARY KEY NOT NULL auto_increment,
    id_tipo_saida INT,
    descricao VARCHAR(255),
    data_hora_saida DATETIME,
    FOREIGN KEY (id_tipo_saida) REFERENCES Tipos_Saidas(id_tipo_saida)
);