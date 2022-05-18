/**
  Agenda de contados
  @author Emanoel Felipe da Silva
  */
  
-- Verificar bancos de dados
show databases;

-- Criar um novo banco de dados
create database teste;
create database agendaEmanoel;

-- Excluir um banco de dados
drop database teste;

-- Selecionar o banco de dados
use agendaEmanoel; 

-- Criando uma tabela
-- int( tipode dados -numeros inteiros)
-- decima (10,2) ->  tipo de dados -numeros nao inteiros 
-- (10,2) 10 digitos com 2 casas decimais
-- primary  key(transforma o campo em chave primária)
-- auto_increment (numeração automatica)
-- varchar(255) -> tipo de dados String (com variação)
-- char(255) tipo de dados String (sem variação)
-- (255) -> maximo de caracter
-- not null (obrigatorio o preenchimento)



create table contatos (
id int primary key auto_increment,
nome varchar(255) not null,
fone varchar(255) not null,
email varchar(255) 

);
-- verificar tabela do banco
show tables;

-- descrever a tabela  
describe contatos;

-- adicionando uma coluna (campo) a tabela
alter table contatos add column obs varchar(255);

-- adicionando uma coluna (campo) a tabela
alter table contatos add column fone2 varchar(255);

-- adicionando uma coluna (campo) a tabela
alter table contatos add column cel varchar(255) after fone;


-- modificando uma propriedade da tabela da coluna (campo) tabela
alter table contatos modify column cel varchar(255) not null; 

-- excluir uma coluna (campo) da tabela
alter table contatos drop column obs;

-- excluir a tabela 
drop table contatos;

