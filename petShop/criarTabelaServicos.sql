create table IF NOT EXISTS servicos(
    id int unsigned not null auto_increment,
    nome_servico varchar(255) not null,
    valor int not null,
    primary key (id)
)

insert into servicos
    (nome_servico, valor)
values
    ("Banho e Tosa", 65),
    ("Hospedagem", 46),
    ("Consulta Veterinária", 88),
    ("Pet Sitting", 110),
    ("Adestramento", 130),
    ("Estetica Animal", 115),
    ("Spa para cães", 158),
    ("Fotografia para animais", 130)

Select * from servicos