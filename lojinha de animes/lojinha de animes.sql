/**
lojinha de animes
@Atutor Emanoel
@version 1.0
*/
-- Criar um novo banco de dados
create database lojinhaanimes;

-- Verificar bancos de dados
show databases;

-- Selecionar o banco de dados
use lojinhaanimes; 

create table produtos(
codigo int primary key auto_increment,
produto varchar(255) not null,
quantidade int not null,
valor decimal(10,2) 
);

insert into produtos(produto,quantidade,valor) 
 values ('manto da akatsuki','10','150.00');
 
 insert into produtos(produto,quantidade,valor) 
 values ('mascara do obito','50','50.00');
 
 insert into produtos(produto,quantidade,valor) 
 values ('kunai do minato','45','65.00');
 
 insert into produtos(produto,quantidade,valor) 
 values ('kunai','10','35.00');
 
 insert into produtos(produto,quantidade,valor) 
 values ('mascara da anbu','90','50.00');

insert into produtos(produto,quantidade,valor) 
 values ('manto do hokage com chapeu do hokage','5','200.00');

-- descrever a tabela  
describe produtos;

-- seleçao de todos os registros da tabela dos produtos
select * from produtos;

-- seleçao de um registro ( produto) especifico
select * from produtos where codigo=3;
