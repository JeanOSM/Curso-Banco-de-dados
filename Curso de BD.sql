#aula01

DROP DATABASE IF EXISTS aula_banco;
 CREATE DATABASE aula_banco;
 USE aula_banco;
 DROP TABLE IF EXISTS estado;
 
 CREATE TABLE estado(
 id  INT PRIMARY KEY NOT NULL AUTO_INCREMENT
 ,nome_estado  VARCHAR (100) NOT NULL
 ,sigla CHAR(2) NOT NULL
 ,ativo CHAR (1) NOT NULL DEFAULT 'S'
 -- ,CHECK (ativo('S','N')--
 ,data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
 ,CONSTRAINT coluna_ativo_deve_ser_S_ou_N CHECK (ativo IN ('S','N')) 
 );
 INSERT INTO estado ( nome_estado, sigla) VALUES ( "PARANÁ","PR");
 INSERT INTO estado (nome_estado, sigla) VALUES ( "SÃO PALO","SP");
 SELECT id,nome_estado,sigla,ativo,data_cadastro FROM estado;
 
 
 #aula02
 
 CREATE TABLE cidade (
 id INT NOT NULL AUTO_INCREMENT
 ,nome_cidade VARCHAR (200) NOT NULL
 , ativo CHAR (1) DEFAULT 'S'
 ,data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
 ,estado_id INT NOT NULL
 ,CONSTRAINT pk_cidade PRIMARY KEY (id)
 ,CONSTRAINT fk_estado FOREIGN KEY (estado_id) REFERENCES estado (id)
 ,CONSTRAINT cidade_ativo_deve_ser_S_N CHECK (ativo IN ('S','N'))
 ,CONSTRAINT cidade_unica UNIQUE (nome_cidade,estado_id)
 
 );
 
 INSERT INTO cidade (nome_cidade,estado_id) VALUES ('CURIIBA', 1);
 
 SELECT * FROM cidade ;
