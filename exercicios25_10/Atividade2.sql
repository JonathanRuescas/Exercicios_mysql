create database db_pizzaria_legal;
use db_pizzaria_legal;


create table tb_categoria(
	id bigint auto_increment,
	tamanho enum ("Pequena", "Media", "Grande"),
    tipo enum ("Doce", "Salgada"),
	id_pizza bigint,
     
	primary key(id)
    );

create table tb_pizza(
	id_pizza bigint auto_increment,
    sabor_pizza varchar(35) not null,
    preco decimal(10,2) check (preco > 0),
    stt boolean,
    id_categoria bigint,
        
    primary key (id_pizza),
    foreign key(id_categoria) references tb_categoria(id)
);

select * from tb_categoria;

insert into tb_categoria (tamanho, tipo) 
	values  ("Pequena", "Salgada"),
			("Media", "Doce"),
            ("Grande", "Salgada"),
            ("Pequena", "Doce"),
            ("Media", "Salgada");

select * from tb_pizza;
            
insert into tb_pizza (sabor_pizza, preco, stt, id_categoria) 
	values  ("Marguerita", 36.99, "Nenhum", true, 1),
			("Frango com Catupiry", 47.99, "Cheddar", true, 3),
            ("Chocolate", 39.99, "Nenhum", true, 2),
            ("Nutella com Morango", 59.99, "Nenhum", true, 4),
            ("Calabresa", 42.99, "Catupiry", true, 3),
            ("Lombo com Cheddar", 62.99, "Cream Cheese", true, 3),
            ("Portuguesa", 41.99, "Catupiry", false, 1);

select * from tb_pizza where preco < 45.00;
select * from tb_pizza where preco between 29.00 and 60.00;
select * from tb_pizza where sabor_pizza like "C%";
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria
	and tb_pizza.stt = true
	order by tb_pizza.id_pizza;
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria 
	and tb_categoria.tipo = "Doce";