create table if not exists funcionariosTeste(
    id int unsigned not null auto_increment,
    nome_funcionario varchar(255) not null,
    salario decimal(10,2) not null,
    data_inicio date,
    data_fim date,
    rua varchar(255) not null,
    cidade varchar(255) not null,
    primary key (id)
)

insert into funcionariosTeste
(nome_funcionario, salario, data_inicio, data_fim, rua, cidade)
values
    ("Felipe", 12000.00, "2022-06-03", "2024-06-03", "Capitao Lessa", "Guaruja"),
    ("Joao", 5000.00, "2021-07-03", "2022-06-02", "Oswaldo Cruz", "Guaruja"),
    ("Lopes", 2500.00, "2022-07-03", "2022-03-05", "Oswaldo Cruz", "Guaruja"),
    ("Thiago", 7000.00, "2013-06-03", "2022-07-03", "Joana", "Santos"),
    ("Fernanda", 2500.00, "2013-06-03", "2015-09-12", "Jhons", "Santos"),
    ("Paula", 1300.00, "2014-09-04", "2024-09-07", "Joana", "Santos"),
    ("Mauricio", 6000.00, "2014-09-04", "2014-09-07", "Joana", "Guaruja")

insert into funcionariosTeste
(nome_funcionario, salario, data_inicio, data_fim, rua, cidade)
values

 

select * from funcionariosTeste

select * from funcionariosTeste     --order by serve para ordernar um determinado dato
order by cidade

select * from funcionariosTeste     -- desc mostra os dados em ordem decrescente
order by rua desc

select * from funcionariosTeste     -- asc mostra os dados em ordem crescente
order by rua asc

select MIN(salario) as "Menor Salario" --MIN pega o menor valor
from funcionariosTeste

select MAX(salario) as "Maior Salario"   --MAX pega o valor maximo
from funcionariosTeste

select count(salario) as "Numero de Funcionarios"  --Count conta o numero de linhas da determinada coluna
from funcionariosTeste

select AVG(salario) as "Media Salarial" --AVG mostra a media de um determinado dado
from funcionariosTeste

select SUM(salario) as "Soma Salarial"  --SUM soma alguns determinados dados
from funcionariosTeste

select * from funcionariosTeste  -- colocando o caracter e depois a porcentagem, ele vai pegar todos os nomes que comecem com essa letra
where nome_funcionario Like 'f%' 

select * from funcionariosTeste -- colocando a porcentagem antes da letra, irá mostrar os nomes que terminam com essa letra
where nome_funcionario Like '%a' 

select * from funcionariosTeste 
where nome_funcionario Like '%au%' -- pra todos nome que contem "au"

select * from funcionariosTeste -- vai mostrar quem tem a segunda caracter a
where nome_funcionario Like '_a%'

select * from funcionariosTeste  -- vai mostrar quem tem a terceira caracter l
where nome_funcionario Like '__l%'

select * from funcionariosTeste -- vai mostrar os nomes que comecam com f e terminam com a 
where nome_funcionario Like 'f%a'

select * from funcionariosTeste -- apenas vai pegar os dados que contem Guaruja e Santos
where cidade in ("Guaruja", "Santos")

SELECT * FROM funcionarios
WHERE salario BETWEEN 1000 AND 4000

SELECT SUM(salario), cidade FROM funcionarios
GROUP BY cidade
ORDER BY SUM(salario) DESC

Select DATEDIFF(data_inicio, data_fim) as 'Duration'
    From funcionariosTeste
    where nome_funcionario = "Felipe"