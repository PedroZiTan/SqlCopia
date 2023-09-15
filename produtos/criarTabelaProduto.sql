create table produto (
    id int not null auto_increment,
    nome_produto varchar(255) not null,
    preco_normal decimal (10,2) not null,
    preco_desconto decimal (10,2) not null,
    primary key (id)
)

-- criando Trigger : por padrao nome do trigger
CREATE TRIGGER tr_desconto BEFORE INSERT
ON produto
FOR EACH ROW
SET NEW.preco_desconto = (NEW.preco_normal * 0.90);

insert into produto
    (nome_produto, preco_normal)
values
    ("Televisao", 120.000),
    ("PS5", 450.000)

select * from produto