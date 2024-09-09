use empregados_gf;
-- select simples --
select * from empregado;
-- flitro de Estado Civil --
select cod_emp from empregado where civil like 'v';
-- Filtro por atributo da tabela extrangira com o uso de subquery
select * from dependente where cod_emp in(
	select cod_emp from empregado where civil like 'v'); 
    
-- Desafio quero todos os dependentes dos funcionarios com mais de 5 anos de empresa --
select * from dependente where cod_emp in(
	select cod_emp from empregado where format((datediff(now(), dt_admissao) / 365), 0) >= 5);

-- Desafio quero todos os dependentes dos funcionarios com mais de 40 anos de idade --
select * from dependente where cod_emp in(
	select cod_emp from empregado where format((datediff(now(), dt_nascimento) / 365), 0) >= 40);