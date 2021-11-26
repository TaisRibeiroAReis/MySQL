create database db_game_online;

use  db_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(255),
poder varchar(150),
hp int, -- Health points!
arma varchar(255),
primary key (id)
);

insert into tb_classes(nome, poder, hp, arma) values ("Bruxo", "Magia", 6, "Varinha Magica");
insert into tb_classes(nome, poder, hp, arma) values ("Fada", "Chicote de fogo", 10, "Chicote");
insert into tb_classes(nome, poder, hp, arma) values ("Vampiro", "Mordida Sangrenta", 5, "Dentes");
insert into tb_classes(nome, poder, hp, arma) values ("Bruxo", "desaparecer", 3, "cajagado");
insert into tb_classes(nome, poder, hp, arma) values ("Fantasma", "Desaparecer", 10, "Capa Magica");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
personagem varchar(100),
nivelUp int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens(personagem, nivelUp, ataque, defesa, classe_id) values ("Mikey", 200, 100, 100, 2);
insert into tb_personagens (personagem, nivelUp, ataque, defesa, classe_id) VALUES ("Minnie", 100, 3000, 2800, 5);
insert into  tb_personagens (personagem, nivelUp, ataque, defesa, classe_id) VALUES ("Pato Donalds", 100, 2000, 2000, 3);
insert into  tb_personagens (personagem, nivelUp, ataque, defesa, classe_id) VALUES ("Zéca Urubu", 10, 1000, 1500, 1);
insert into  tb_personagens (personagem, nivelUp, ataque, defesa, classe_id) VALUES ("Lilo", 1000, 1300, 1110, 3);
insert into  tb_personagens (personagem, nivelUp, ataque, defesa, classe_id) VALUES ("Relampago", 500, 2300, 3000, 5);
insert into  tb_personagens (personagem, nivelUp, ataque, defesa, classe_id) VALUES ("Urso", 400, 1800, 2200, 1);
insert into  tb_personagens (personagem, nivelUp, ataque, defesa, classe_id) VALUES ("Zacaré", 300, 1300, 850, 5);
insert into  tb_personagens (personagem, nivelUp, ataque, defesa, classe_id) VALUES ("Pica Pau", 150, 2100, 900, 4);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes 
on tb_personagens.classe_id = tb_classes.id;

select tb_personagens.nome, tb_classes.nome from tb_personagens inner join tb_classes 
on tb_personagens.classe_id = tb_classes.id
where tb_classes.id = 2;

