create database db_pizzaria_legal;

use db_pizzaria_legal;


create table tb_categoria (
	
    id bigint auto_increment,
    tipo varchar (100),
    tamanho varchar (100),
    
    primary key(id)
);


insert into tb_categoria (tipo, tamanho) values ("Salgada", "Grande");
insert into tb_categoria (tipo, tamanho) values ("Salgada", "Média");
insert into tb_categoria (tipo, tamanho) values ("Salgada", "Broto");
insert into tb_categoria (tipo, tamanho) values ("Doce", "Grande");
insert into tb_categoria (tipo, tamanho) values ("Doce", "Média");
insert into tb_categoria (tipo, tamanho) values ("Doce", "Broto");


create table tb_pizza (
	
    id bigint auto_increment,
    sabor varchar (100),
    borda varchar (100),
    adicional varchar (100),
    preco int,
    fk_id_categoria bigint,
    primary key(id),
    foreign key (fk_id_categoria) references tb_categoria (id)
);



insert into tb_pizza (sabor, borda, adicional, preco, fk_id_categoria) values ("Bacon","Cheddar","Normal", 42, 1);
insert into tb_pizza (sabor, borda, adicional, preco, fk_id_categoria) values ("Frango","Catupiry","Milho", 38, 2);
insert into tb_pizza (sabor, borda, adicional, preco, fk_id_categoria) values ("Portuguesa","Mussarela","Bacon", 50, 1);
insert into tb_pizza (sabor, borda, adicional, preco, fk_id_categoria) values ("Chocolate","Doce de leite","Normal", 70, 4);
insert into tb_pizza (sabor, borda, adicional, preco, fk_id_categoria) values ("Banana","Chocolate","Doce de leite", 60, 5);
insert into tb_pizza (sabor, borda, adicional, preco, fk_id_categoria) values ("Doce de leite","Creme","Chocolate", 55, 6);

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where sabor like "%C%";

select * from tb_pizza  inner join tb_categoria
on tb_categoria.id = tb_pizza.fk_id_categoria;

select * from tb_pizza  inner join tb_categoria
on tb_categoria.id = tb_pizza.fk_id_categoria
where fk_id_categoria = 1
