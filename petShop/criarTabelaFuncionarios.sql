create table IF NOT EXISTS funcionarios(
    id int unsigned not null auto_increment,
    nome varchar(255) not null,
    rg int (15) not null,
    cpf int(15) not null,
    endereco varchar(255) not null,
    cargo varchar(255) not null,
    salario int not null,
    data_entrada date,
    data_nascimento date,
    primary key (id),
    unique key (rg, cpf)
)

insert into funcionarios
    (nome, rg, cpf, endereco, cargo, salario, data_entrada, data_nascimento)
values
    ("Antonio", 55698412, 444885268, "Av Leomil", "Recepcionista", 1200, "2020-05-09", "2001-09-21"),

insert into funcionarios
  (nome, rg, cpf, endereco, cargo, salario, data_entrada, data_nascimento)
values
    ("Raissa", 4446645, 224563789, "Jardim Progresso", "Gerente", 4500, "2018-06-10", "1999-10-22"),
    ("Andre", 1235689, 447889665, "Rua Tira Dentes", "Cuidador", 2000, "2021-06-04", "2000-10-15"),
    ("Martins", 1649586, 668451325, "Rua Martins", "Atendente", 1450, "2019-05-10", "1998-10-20"),
    ("Raphael", 1546782, 448795265, "Av Rubi", "Aux Veterinario", 2010, "2019-06-14", "2000-10-10"),
    ("Anna", 4678592, 222555874, "Av Moura", "Veterinaria", 3800, "2018-04-06", "1999-12-26")

SELECT * FROM funcionarios