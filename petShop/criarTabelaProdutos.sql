create table IF NOT EXISTS Produtos (
    id int unsigned not null auto_increment,
    nome_produto varchar(255) NOT NULL,
    valor int not null,
    descricao varchar(255) NOT NULL,
    primary key (id)    
)

insert into Produtos
    (nome_produto, valor, descricao)
values
    ("Ração para Cães", 30, "Ração de 10kg"),
    ("Ração para Cães", 60, "Ração de 25kg"),
    ("Ração para Cães", 140, "Ração de 60kg"),
    ("Ração para Gatos", 20, "Ração de 10kg"),
    ("Ração para Gatos", 50, "Ração de 25kg"),
    ("Ração para Gatos", 75, "Ração de 60kg"),
    ("Brinquedo para Cães", 28,"Mini Sofa de Borracha, tamanho médio"),
    ("Bola para Cães", 12,"Kit com 3 bolas de borracha, tamanho pequeno"),
    ("Perfume para Cães", 75,"Perfume com 500ml"),
    ("Shampoo para Cães", 32,"Shampoo cheiro morango, com 300ml"),
    ("Arranhador de Gato", 120,"Arranhador de Gato tamanho grande"),
    ("Arranhador de Gato", 60,"Arranhador de Gato tamanho médio"),
    ("Casa de Cão", 128,"Casa para Cães tamanho médio"),
    ("Casa de Gato", 128,"Casa para Gatos tamanho médio"),
    ("Fanstasia para Gato", 68, "De acordo com o tamanho do gato do cliente")

Select * from Produtos