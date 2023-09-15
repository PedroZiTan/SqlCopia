-- Criando a tabela estado !
CREATE TABLE estados (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    regiao ENUM('Norte', 'Nordeste', 'Centro-Oeste', 'Sudeste', 'Sul') NOT NULL,
    populacao DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY (nome),
    UNIQUE KEY (sigla)
)


DROP TABLE estados
-- create table -> criar tabela
-- int -> numeros inteiros
-- unsigned -> sem sinal ... nao pode ser negativo
-- not null -> não nulo ... campo não pode estar vazio, DEVE ser preenchido
-- Auto_increment -> a maquina vai adicionar automaticamente +1 no id
-- varchar -> numero caracteres pre-definidos (indicar a quantidade de caracteres)
-- enum -> enumerar para evitar erros de grafia
-- decimal -> valoras
-- primary key -> chave primaria, não pode se repetir, muitas das vezes coloca em id, pq nunca vai se repetir
-- unique key -> chave unica. o dado não pode ser adicionado mais de 1 vez, sem repetição!
