ALTER TABLE empresas MODIFY cnpj varchar(14);

insert into empresas
    (nome, cnpj)
VALUES
("Bradesco", "11125546872001"),
("Vale", "12458796530001"),
("Cielo", "25896365478954")

SELECT * from empresas

select * from cidades

select * from empresas_unidades

insert into empresas_unidades
    (empresa_id, cidade_id, sede)
    
values
    (1, 1, 0),
    (2, (select id from cidades WHERE nome = "Caruaru"), 1),
    (3, 1, 1)
