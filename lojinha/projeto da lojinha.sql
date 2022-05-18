/**
dados lojinha 
@author Emanoel 
*/

-- verificar banco de dados 
show databases;

-- Criar um novo banco de dados
create database lojinha;
create database lojinhaEmanuel;

-- Excluir um banco de dados
drop database lojinha;

-- Selecionar o banco de dados
use lojinhaEmanuel; 


create table produtos(
id int primary key auto_increment,
nome varchar(255) not null,
estoque varchar(255) not null,
preco varchar(255) 
);

-- verificar tabela do banco
show tables;

-- descrever a tabela  
describe produtos;

-- adicionando uma coluna (campo) a tabela
alter table produtos add column obs varchar(255);

-- adicionando uma coluna (campo) a tabela
alter table produtos add column fone1 varchar(255);

-- adicionando uma coluna (campo) a tabela
alter table produtos add column cel varchar(255);

-- modificando uma propriedade da tabela da coluna (campo) tabela
alter table produtos modify column cel varchar(255) not null; 

-- excluir uma coluna (campo) da tabela
alter table produtos drop column obs;

-- excluir a tabela 
drop table produtos;