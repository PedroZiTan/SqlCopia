create table IF NOT EXISTS vendas (
    id int unsigned not null auto_increment,

    id_cliente int unsigned not null,
    id_funcionario int unsigned not null,
    id_petshop int unsigned not null,
    id_produtos int unsigned not null,
    id_servicos int unsigned not null,

    primary key (id),
    foreign key (id_cliente) references Clientes (id),
    foreign key (id_petshop) references PetShop (id),
    foreign key (id_funcionario) references funcionarios (id),
    foreign key (id_produtos) references Produtos (id),
    foreign key (id_servicos) references servicos (id)

)

drop table vendas

insert into vendas 
(id_cliente, id_funcionario, id_produtos, id_servicos, id_petshop)
values
(1,1,3,1,1),
(2,2,5,2,1),
(3,3,7,3,1),
(4,4,8,4,1),
(5,5,11,5,1),
(6,6,15,6,1)

SELECT pe.cnpj "CNPJ" ,
c.nome "Cliente",
f.nome "Funcinario",
c.nome_cachorro "Cachorro",
p.nome_produto "Produto",
p.valor "Valor do Produto",
s.nome_servico "Serviço",
s.valor "Valor do Serviço",
SUM(p.valor + s.valor) "Valor Total"
from vendas v
INNER JOIN funcionarios f on f.id = v.id_funcionario
INNER JOIN clientes c on c.id = v.id_cliente
INNER JOIN petshop pe on pe.id = v.id_petshop
INNER JOIN produtos p on p.id = v.id_produtos
INNER JOIN servicos s on s.id = v.id_servicos
GROUP BY v.id