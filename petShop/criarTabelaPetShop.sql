create table IF NOT EXISTS PetShop (
    id int unsigned NOT NULL auto_increment,
    nome varchar(255) NOT NULL,
    data_criacao date,
    cnpj int (15) not null,
    endereco varchar(255) not null,
    primary key (id),
    unique key(cnpj)
)

Insert into PetShop
    (nome, data_criacao, cnpj, endereco)
values
    ("Chocaolate", "2018-03-19", 2589412, "Rua Marques de Olinda")

select * from PetShop
