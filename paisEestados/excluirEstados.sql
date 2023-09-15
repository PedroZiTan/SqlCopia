INSERT INTO estados 
    (id, nome, sigla, regiao, populacao)
VALUES
    (1000, "novo1", 'N1', 'Norte', 0.33),
    (1001, "novo2", 'N2', 'Norte', 0.33),
    (1003, "novo3", 'N3', 'Norte', 0.33)


select * from estados

delete  from estados
    where sigla = 'N3'
    
delete from estados
where id >= 1000