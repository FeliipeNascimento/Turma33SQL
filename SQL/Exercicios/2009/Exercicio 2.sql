create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	id bigint(5) auto_increment,
	nome varchar (30) not null,
	marca varchar (15) not null,
    lancamento date not null,
	preco decimal (7,2) not null, 
	primary key (id)

);

insert into tb_produtos(nome, marca, lancamento, preco) values ("Camisa do Corinthians", "Nike", '2021-01-05', 159.99);
insert into tb_produtos(nome, marca, lancamento, preco) values ("Camisa do Palmeiras", "Puma", '2021-01-06', 129.99);
insert into tb_produtos(nome, marca, lancamento, preco) values ("Camisa do São Paulo", "Adidas", '2021-01-07', 124.99);
insert into tb_produtos(nome, marca, lancamento, preco) values ("Camisa do Santos", "Olympikus", '2021-01-08', 159.00);
insert into tb_produtos(nome, marca, lancamento, preco) values ("Camisa do Flamengo", "Lacoste", '2021-01-09', 100.00);
insert into tb_produtos(nome, marca, lancamento, preco) values ("Camisa do Fluminense", "Dolce Gabanna", '2021-01-10', 119.99);
insert into tb_produtos(nome, marca, lancamento, preco) values ("Camisa do Atletico Mineiro", "Louis Vitton", '2021-01-11', 109.99);
insert into tb_produtos(nome, marca, lancamento, preco) values ("Camisa do Internacional", "Polo", '2021-01-12', 119.99);

select * from tb_produtos;
select * from tb_produtos where preco < 500;
select * from tb_produtos where preco > 500;

update tb_produtos set id = 20
	where id = 5;
update tb_produtos set id = 30
	where id = 6;
update tb_produtos set id = 40
	where id = 7;
update tb_produtos set id = 50
	where id = 8
    

    