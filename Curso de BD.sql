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
 