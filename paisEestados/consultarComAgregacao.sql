select 
    regiao as "Região",
    sum(populacao) as total
from estados
group by regiao
order by total desc


