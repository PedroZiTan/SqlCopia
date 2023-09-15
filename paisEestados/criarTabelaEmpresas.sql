create table IF NOT EXISTS empresas (
    id INT unsigned NOT NULL auto_increment,
    nome VARCHAR(255) NOT NULL,
    cnpj int unsigned NOT NULL,
    primary key (id),
    unique key(cnpj)
);

create table IF NOT EXISTS empresas_unidades(
    empresa_id INT unsigned NOT NULL,
    cidade_id int unsigned NOT NULL,
    sede TINYINT(1)  NOT NULL,
    primary key (empresa_id, cidade_id)
);