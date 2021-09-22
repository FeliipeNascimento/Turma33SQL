create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
	
	id bigint auto_increment,
    nome varchar (255),
    poder varchar (255),
    energia int,
    
    primary key (id)
);


insert into tb_classe (nome, poder, energia) values ("DragonBool", " Kamerameha", 100);
insert into tb_classe (nome, poder, energia) values ("Arqueiro", " Chuva de Flechas", 100);
insert into tb_classe (nome, poder, energia) values ("Maga", " Bola de Fogo", 90);
insert into tb_classe (nome, poder, energia) values ("Protector", "Escudo de Aço", 100);
insert into tb_classe (nome, poder, energia) values ("Sereia", " Agua trasnbordante", 120);

select * from tb_classe;

create table tb_personagen (
	
	id bigint auto_increment,
    nome varchar (20),
    genero varchar(20),
    raca varchar (20),
    ataque int,
    defesa int,
    fk_id_classe bigint,
    primary key (id),
    foreign key (fk_id_classe) references tb_classe (id)
);

insert into tb_personagen (nome, genero, raca, ataque, defesa, fk_id_classe) values ("Felipe", "Ele", "Jacaré", 2100, 1280, 1);
insert into tb_personagen (nome, genero, raca, ataque, defesa, fk_id_classe) values ("Liliane", "Ela", "Passaro", 1295, 1576, 3);
insert into tb_personagen (nome, genero, raca, ataque, defesa, fk_id_classe) values ("Lathifa", "Ela", "Humana", 2177, 2199, 2);
insert into tb_personagen (nome, genero, raca, ataque, defesa, fk_id_classe) values ("Mike", "Ele", "Humana", 1250, 1282, 4);
insert into tb_personagen (nome, genero, raca, ataque, defesa, fk_id_classe) values ("Beu", "Ele", "Jacaré", 2199, 2189, 5);

select * from tb_personagen;

select * from tb_personagen where ataque > 2000;
select * from tb_personagen where defesa between 1000 and 2000;
select * from tb_personagen where nome like "%C%";
select * from tb_personagen  inner join tb_classe
on tb_classe.id = tb_personagen.fk_id_classe;

select * from tb_personagen  inner join tb_classe
on tb_classe.id = tb_personagen.fk_id_classe
where fk_id_classe = 2;