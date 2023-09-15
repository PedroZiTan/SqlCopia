select * from estados as e, cidades as c
where e.id = c.estado_id


SELECT 
    e.nome as "Estado",
    c.nome as "Cidade",
    e.regiao as "Região"
from estados as e, cidades as c
where e.id = c.estado_id

select 
    c.nome as Cidade,
    e.nome as Estado,
    e.regiao as Regiao 
from estados as e 
inner join cidades as c on e.id = c.estado_id    