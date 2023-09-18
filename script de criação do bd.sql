#criando o banco
create database if not exists pesquisadores;

#usando a base de dados
use pesquisadores;

#criando tabelas
create table if not exists veiculos(
veiculoId int not null,
titulo varchar(45) not null,
local varchar(45),
primary key(veiculoId)
)engine InnoDB;

create table if not exists artigos (
artigoId int not null,
titulo varchar(45),
pgInicial varchar(45),
pgFinal varchar(45),
veiculoId int not null,
primary key(artigoId),
foreign key (veiculoId) references veiculos(veiculoId)
);

create table if not exists instituicao(
instituicaoId int not null,
nome varchar(45) not null,
primary key(instituicaoId)
)engine InnoDB;

create table if not exists pesquisadores (
cpf int not null,
nome varchar(45),
artigoId int not null,
instituicaoId int not null,
primary key(cpf),
foreign key (artigoId) references artigos(artigoId),
foreign key (instituicaoId) references instituicao(instituicaoId)
);