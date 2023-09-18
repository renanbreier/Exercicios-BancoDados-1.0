#Comandos para inserir valores
insert into instituicao(instituicaoId, nome) values (01, 'IFSP-Bragança');
insert into veiculos(veiculoId, titulo, local) values (01, 'oMunicipio', 'Jornal');
insert into artigos(artigoId, titulo, pgInicial, pgFinal, veiculoId) values (01, 'Crição de Banco de Dados', '100', '130', 01);

insert into pesquisadores(cpf, nome, artigoId, instituicaoId) values (12365478945, 'Renan Breier', 01, 01);
insert into pesquisadores(cpf, nome, artigoId, instituicaoId) values (00000000000, 'Arthur Faria', 01, 01);

#Comando para fazer exclusão do registro
delete from pesquisadores where cpf = 00000000000;

#Comando para atualizar um dado
update pesquisadores set nome = 'Renan de Oliveira Breier' where cpf = 12365478945;

#Comandos de Select
select * from pesquisadores;
select * from instituicao where instituicaoId = 01;
select titulo, pgInicial, pgFinal, veiculoId from artigos where artigoId = 01;