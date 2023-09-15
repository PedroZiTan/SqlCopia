SELECT * FROM estados


INSERT INTO cidades
    (nome, area, estado_id)
VALUES
    ("Rio Branco", 230.99, 1),
    ("Joinville", 187.44, 2)

select * from cidades

insert into cidades
    (nome, area, estado_id)
VALUES
    (
        "Juarez do Norte",
        248.06,
        (select id from estados where sigla = "CE")
    ),
    (
        "Mogi das Cruzes",
        232.06,
        (select id from estados where sigla = "SP")
    )    