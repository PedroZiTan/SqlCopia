create table IF NOT EXISTS Clientes(
    id int unsigned not null auto_increment,
    nome varchar(255) not null,
    email varchar(255) not null,
    cpf int not null,
    rg int not null,
    endereco varchar(255) not null,
    idade_clientes int not null,
    data_nascimento date,
    nome_cachorro varchar(255) not null,
    raca_cachorro varchar(255) not null,
    primary key (id),
    unique key (email, cpf, rg)    
)

insert into clientes
    (nome, cpf, rg, email, endereco, idade_clientes, data_nascimento, nome_cachorro, raca_cachorro)
Values
    ("Roberto", 556985869, 2874658, "robert.oliveira@gmail.com", "Rua Marco Antonio", 23, "2000-02-18", "Thunder", "Labrador"),
    ("Maria", 111489653, 2548969, "alamaria.1@gmail.com", "Rua Jose Alamedas", 16, "2006-07-18", "Trovao", "Chihuahua"),
    ("Gustavo", 559639445, 4936875, "gutto.ferreira@hotmail.com", "Av Mario Ribeiro", 18, "2005-02-28", "Furia", "Bulldog"),
    ("Sarah", 446363554, 5879632, "saas.lisboa.o.f@gmail.com", "Rua Muri Casvel", 20, "2003-09-16", "Biscoito", "Pitbull"),
    ("Luiza", 999365154, 4568792, "luiz4@gmail.com", "Rua Louro Marcio", 22, "2001-04-17", "Pe de Pano", "Cachorro Salsicha"),
    ("Andrew", 226589134, 1246897, "andrewniez@gmail.com", "Rua Lorena", 17, "2005-12-09", "Caiuxa", "Poodle")

select * from `clientes`