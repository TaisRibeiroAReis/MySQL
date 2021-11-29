create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizza(
id bigint not null auto_increment,
sabor varchar(255),
preco decimal not null,
primary key (id) 
);

insert into tb_pizza (sabor, preco) values ("Mussarela",32.00);
insert into tb_pizza (sabor, preco) values ("Brocolis",45.00);
insert into tb_pizza (sabor, preco) values ("Calabresa",29.00);
insert into tb_pizza (sabor, preco) values ("Bacon",60.00);
insert into tb_pizza (sabor, preco) values ("Frangalho",32.00);
insert into tb_pizza (sabor, preco) values ("Beijinho",32.00);
insert into tb_pizza (sabor, preco) values ("Brigadeiro",32.00);
insert into tb_pizza (sabor, preco) values ("Calabresa com Requeijão",45.00);

create table tb_categoria(
id bigint not null auto_increment,
categoria varchar(100),
tamanho varchar (100),
foreign key (pizza_id) references tb_pizza (id) 
);

insert into tb_categoria (categoria,tamanho) values ("Pizza Doce","Grande");
insert into tb_categoria (categoria,tamanho) values ("Pizza Doce","brotinho");
insert into tb_categoria (categoria,tamanho) values ("Pizza Salgada","Grande");
insert into tb_categoria (categoria,tamanho) values ("Pizza Salgada","brotinho");
insert into tb_categoria (categoria,tamanho) values ("Pizza meio a meio","Grande");

select * from tb_pizza;

select * from tb_categoria;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

SELECT * FROM tb_pizza WHERE nome LIKE "C%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizza.categoria_id 
WHERE tb_categoria.id = 1;