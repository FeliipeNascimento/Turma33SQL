create database db_farmacia_do_bem;

use db_farmacia_do_bem;


create table tb_categoria (
	
    id bigint auto_increment,
    classe varchar (100),
    manipulado varchar (100),
    
    primary key(id)
);


create table tb_produto (
	
    id bigint auto_increment,
    nome varchar (100),
    fabricante varchar (100),
    estoque bigint,
    preco decimal,
    fk_id_categoria bigint,
    primary key(id),
    foreign key (fk_id_categoria) references tb_categoria (id)
);


insert into tb_categoria (classe, manipulado) values ("Analgésicos", "Sim");
insert into tb_categoria (classe, manipulado) values ("Vitaminas", "Sim");
insert into tb_categoria (classe, manipulado) values ("Colírios", "Sim");
insert into tb_categoria (classe, manipulado) values ("Vacina", "Não");
insert into tb_categoria (classe, manipulado) values ("Cosmeticos", "Não");

select * from tb_categoria;

insert into tb_produto (nome, fabricante, estoque, preco, fk_id_categoria) values ("Dorflex","Sanofi", 100, 20.00, 1);
insert into tb_produto (nome, fabricante, estoque, preco, fk_id_categoria) values ("Omega 3","Tg Farma", 200, 100.00, 2);
insert into tb_produto (nome, fabricante, estoque, preco, fk_id_categoria) values ("Britens","Generico", 300, 50.00, 3);
insert into tb_produto (nome, fabricante, estoque, preco, fk_id_categoria) values ("Astrazeneca","SinoVac", 800, 250.00, 4);
insert into tb_produto (nome, fabricante, estoque, preco, fk_id_categoria) values ("Desodorante","Rexona", 12.00, 10, 5);
insert into tb_produto (nome, fabricante, estoque, preco, fk_id_categoria) values ("Timolol","Genom", 110, 50.00, 3);

select * from tb_produto;

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%B%";

select * from tb_produto  inner join tb_categoria
on tb_categoria.id = tb_produto.fk_id_categoria;

select * from tb_produto  inner join tb_categoria
on tb_categoria.id = tb_produto.fk_id_categoria
where fk_id_categoria = 1