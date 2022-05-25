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

-- timestamp default current_timestamp, (data e hora automatico)
-- date (tipo de dados relaciondados a data)
create table produtos(
codigo int primary key auto_increment,
barcode varchar (255),
produto varchar(255) not null,
descricao varchar(255) not null,
fabricante varchar(255) not null,
datacad timestamp default current_timestamp,
dataval date not null,
estoque int not null,
estoquemin int not null,
unidade varchar (255) not null,
localizacao varchar (255),
custo decimal (10,2) not null,
lucro decimal	(10,2),
venda decimal(10,2)
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
 
 insert into produtos(produto,quantidade,valor) 
 values ('manto do hokage da sombras com chapeu do hokage das sombras','5','200.00');

-- descrever a tabela  
describe produtos;

insert into produtos(barcode,produto,descricao,fabricante,dataval,
estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values
('1234567890','Caneta Bic Azul ','Caneta bic ponta fina azul','BIC',
20240523,20,5,'UN','Prateleira 2',0.75,100,1.50);



insert into produtos(barcode,produto,descricao,fabricante,dataval,
estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values
('2345678901','lamem ','lamem de naruto','Naruto',
20240523,20,5,'UN','Prateleira 3',10.75,100,10.50);

insert into produtos(barcode,produto,descricao,fabricante,dataval,
estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values
('4569871230','bolinho de arroz ','bolinho de arroz','Dragon ball',
20240523,20,5,'UN','Prateleira 3',10.75,100,11.50);

insert into produtos(barcode,produto,descricao,fabricante,dataval,
estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values
('987456123','bolinho feijao ','bolinho de feijao','Naruto',
20240523,20,5,'UN','Prateleira 3',10.75,100,13.50);

insert into produtos(barcode,produto,descricao,fabricante,dataval,
estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values
('897456321','temaki','temaki','comida anime',
20240523,20,5,'UN','Prateleira 3',10.75,100,14.50);

insert into produtos(barcode,produto,descricao,fabricante,dataval,
estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values
('684235197',' niguiri','niguiri',' comida anime',
20240523,20,5,'UN','Prateleira 3',10.75,100,15.50);

insert into produtos(barcode,produto,descricao,fabricante,dataval,
estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values
('8741259630','brumati ','brumati','comida anime',
20240523,20,5,'UN','Prateleira 3',10.75,100,16.50);


/* relatorio */

-- Invetario do (patrimônio)
-- sum () função de soma no banco de dados
select sum(estoque * custo) as total from produtos;

-- relatorio de reposiçao de estoque 1 
select * from produtos where estoque < estoquemin;

-- relatorio de reposiçao de estoque 2
-- date_format() função usada para formatar a data 
-- %d%m%Y dd/mm/aaaa | %d%m%Y dd/mm/aa 
select codigo as código,produto,
date_format(dataval,'%d%m%Y') as data_validade,
estoque,estoquemin as estoque_mínimo
from produtos where estoque < estoquemin;

-- relatorio de validade de produtos 1
select codigo as código,produto,
date_format(dataval,'%d%m%Y') as data_validade
from produtos;

-- relatorio de validade de produtos 2
-- datediff() calcular a diferencia em dias 
-- curdate() obtém a data atual 
select codigo as código,produto,
date_format(dataval,'%d%m%Y') as data_validade,
datediff(dataval,curdate()) as dias_restantes
from produtos;



-- seleçao de todos os registros da tabela dos produtos
select * from produtos;

-- seleçao de um registro ( produto) especifico
select * from produtos where codigo=3;

create table usuarios(
idusu int primary key auto_increment,
usuario varchar (255) not null,
login varchar (255) not null unique,
senha varchar (255) not null,
perfil varchar (255) not null
);
describe usuarios;
-- para inserir uma senha com criptografia usamos md5()
insert into usuarios(usuario,login,senha,perfil)
value('Administrador','admin',md5('admin'),'admin');

insert into usuarios(usuario,login,senha,perfil)
value('emanoel','emanoel',md5('123456'),'user');

select * from usuarios;

-- acessando o sitema pela tela de login 
select * from usuarios where login='admin' and senha='123456';

-- and ( função logica onde todas as condiçoes devem ser verdadeiras)
select * from usuarios where login='admin' and senha=md5('admin');

create table clientes (
idcli int primary key auto_increment,
nome varchar (255) not null,
fone varchar (255) not null,
cpf varchar (255)unique,
email varchar (255),
marketing varchar(255) not null,
cep varchar (255),
endereco varchar (255),
numero varchar (255),
complemento varchar (255),
bairro varchar (255),
cidade varchar (255),
uf char(2)
);
describe clientes;

-- adicionando uma coluna (campo) a tabela clientes 
alter table clientes add column nascimento varchar(255);

alter table produtos modify column barcode varchar(255) unique;

delete from produtos where id=1; 


insert into clientes (nome,fone,email)
value ('emanoel','95101-4239', 'emanoelfpsilva@gmail.com');

insert into clientes (nome,fone,email)
value ('gabriel','95101-4139', 'gabrielsilva@gmail.com');

insert into clientes (nome,fone,email)
value ('felipe','95101-4039', 'felipesilva@gmail.com');

insert into clientes (nome,fone,email)
value ('joao','95101-3339', 'joaosilva@gmail.com');

insert into clientes (nome,fone,email)
value ('kauan','95101-8339', 'kauansilva@gmail.com');

insert into clientes (nome,fone,email)
value ('kevinho','95101-4939', 'kevinhosilva@gmail.com');

describe produtos;

update produtos set produto='caneta preta'where id=1;
