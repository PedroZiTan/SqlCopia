UPDATE estados
set nome = 'Maranhão'
where sigla = 'MA'

select nome, sigla from estados
    where sigla = 'MA'

UPDATE estados
set nome = "Paraná",
    populacao = 11.32
where sigla = 'PR'

select nome, sigla from estados
    where sigla = 'PR'

SELECT est.nome, est.regiao from estados as est 