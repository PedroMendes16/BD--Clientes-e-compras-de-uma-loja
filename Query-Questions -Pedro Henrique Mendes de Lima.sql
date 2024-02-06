# Criando o banco de dados
create database aula13_05;
use aula13_05;

# Criando as tabelas do Market
create table clientes(
cod_cli int not null primary key auto_increment,
nome_cli varchar(45) not null,
cpf_cli varchar(14) not null,
numero_cli varchar(10) not null,
adress varchar(45) not null) Engine = Innodb;
select * from clientes;

create table compras(
cod_com int not null primary key auto_increment,
data_com date not null,
valor_com decimal(7,2) not null, 
cod_cli int not null,
cod_prod int not null) Engine = Innodb;
select * from compras;

create table produtos(
cod_prod int not null primary key auto_increment,
descri_prod varchar(150) not null,
qntd_prod int not null, 
valor_prod decimal(6,2) not null,
validade_prod date not null) Engine = Innodb;
select * from produtos;
drop table produtos;

# Definindo Ligações entre Tabelas
alter table compras
add constraint fk_clientes_compras
foreign key (cod_cli)
references clientes(cod_cli);

alter table compras
add constraint fk_produtos_compras
foreign key (cod_prod)
references produtos(cod_prod);

# Inserindo valores nas tabelas
insert into clientes( cod_cli, nome_cli, cpf_cli, numero_cli, adress)values 
	(1,'Algustinho Carrara', '123.456.789-01', '9-1345678', 'Rua Ninguém');
insert into clientes(nome_cli, cpf_cli, numero_cli, adress)values
	('Aliça', '123.456.789-02', '91345-6780', 'Rua Batata');
insert into clientes(nome_cli, cpf_cli, numero_cli, adress)values
	('Pedro', '123.456.789-03', '91345-6321', 'Rua Los Santos');
insert into clientes(nome_cli, cpf_cli, numero_cli, adress)values
	('Trevor', '123.456.789-03', '92321-6780', 'Rua Olinda');
insert into clientes(nome_cli, cpf_cli, numero_cli, adress)values
	('Kratos', '123.456.789-04', '93123-1313', 'Rua Monte Olimpo');
insert into clientes(nome_cli, cpf_cli, numero_cli, adress)values
	('Cleyton', '123.456.439-05', '91345-1233', 'Rua Num Sei');
insert into clientes(nome_cli, cpf_cli, numero_cli, adress)values
	('Alberto', '123.323.789-06', '91345-9323', 'Rua Morumbi');
insert into clientes(nome_cli, cpf_cli, numero_cli, adress)values
	('José', '123.456.789-07', '92133-6780', 'Rua Norte');
insert into clientes(nome_cli, cpf_cli, numero_cli, adress)values
	('Zuleika', '123.456.789-08', '90093-6780', 'Rua Sul');
insert into clientes(nome_cli, cpf_cli, numero_cli, adress)values
	('Damares', '123.456.132-09', '93145-6780', 'Rua Leste');
select * FROM clientes;

insert into produtos( cod_prod, descri_prod, qntd_prod, valor_prod, validade_prod)values
	(1,'Fofura', 10, 12.50, '2022-06-06');
insert into produtos( descri_prod, qntd_prod, valor_prod, validade_prod)values
	('Mesa de ping-pong', 1, 129.99, '2100-10-09');
insert into produtos( descri_prod, qntd_prod, valor_prod, validade_prod)values
	('Snikers', 2, 2.50, '2045-02-28');
insert into produtos( descri_prod, qntd_prod, valor_prod, validade_prod)values
	('Air Jordan Chicago 1', 1, 99.00, '2080-02-19');
insert into produtos( descri_prod, qntd_prod, valor_prod, validade_prod)values
	('Gorro', 1, 27.00, '2043-08-07');
insert into produtos( descri_prod, qntd_prod, valor_prod, validade_prod)values
	('Copo de vidro', 1, 9.00, '2038-03-04');
insert into produtos( descri_prod, qntd_prod, valor_prod, validade_prod)values
	('Playstation 5', 	1, 50.00, '2035-02-04');
insert into produtos( descri_prod, qntd_prod, valor_prod, validade_prod)values
	('Teclados', 5, 33.00, '2028-08-09');
insert into produtos( descri_prod, qntd_prod, valor_prod, validade_prod)values
	('Iphone 11', 1, 75.00, '2025-05-05');
insert into produtos( descri_prod, qntd_prod, valor_prod, validade_prod)values
	('Arroz', 12, 15.00, '2027-06-05');
select * from produtos;
                    
insert into compras( cod_com, data_com, valor_com, cod_cli,cod_prod)values
	( 1, '2020-06-28', 21, 1, 1);
insert into compras( data_com, valor_com, cod_cli,cod_prod)values
	(  '2020-04-04', 32, 7, 2);
insert into compras( data_com, valor_com, cod_cli,cod_prod)values
	( '2020-05-03', 50, 6, 3);
insert into compras( data_com, valor_com, cod_cli,cod_prod)values
	( '2020-06-04', 30, 2, 4);
insert into compras( data_com, valor_com, cod_cli,cod_prod)values
	( '2020-06-07', 20, 7, 5);
insert into compras( data_com, valor_com, cod_cli,cod_prod)values
	( '2020-01-14', 30, 6, 6);
insert into compras( data_com, valor_com, cod_cli,cod_prod)values
	( '2020-02-16', 60, 4, 7);
insert into compras( data_com, valor_com, cod_cli,cod_prod)values
	( '2020-03-01', 40, 10, 8);
insert into compras( data_com, valor_com, cod_cli,cod_prod)values
	( '2020-04-02', 20, 3, 9);
insert into compras( data_com, valor_com, cod_cli,cod_prod)values
	( '2020-06-03', 60, 6, 10);
insert into compras( data_com, valor_com, cod_cli,cod_prod)values
	( '2020-06-03', 1200, 6, 10);
insert into compras( data_com, valor_com, cod_cli,cod_prod)values
	( '2020-04-03', 10, 6, 9);
    
##########################################################################################

# Atividade de Scripts - 13.05

# 1 question - Script para retornar maior valor do produto.
select max(valor_prod), descri_prod  from produtos;

# 2 question - Script para retornar compras do mês de janeiro.
select * from compras where MONTH(data_com) = '1';

# 2 question - Script para retornar compras do mês de janeiro.
select * from compras where MONTH(data_com) = '1';

# 3 question - Script para retornar valor do produto mais barato
select min(valor_prod) from produtos;

# 4 question - Selecionar codigo do cliente que fez compras entre 12-01-2020 e 02-03-2020
select clientes.nome_cli from clientes inner join compras on 
clientes.cod_cli = compras.cod_cli where data_com between '2020-01-12' and '2020-03-02';

# 5 questão- Retornar o cpf e o nome de um cliente que fez ua compra superior a 1.000,00
select clientes.nome_cli, clientes.cpf_cli from clientes inner join compras on
clientes.cod_cli = compras.cod_cli where valor_com > 1000;

#6 question - Retorna os endereço e o nome de quem comprou celulares no mês de abril
select clientes.nome_cli, clientes.adress from clientes inner join compras on
clientes.cod_cli = compras.cod_cli where MONTH(data_com) = '4' and cod_prod = '9';





