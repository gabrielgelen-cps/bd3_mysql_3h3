select * from departamento where nome like "%a%";
select count(cod_depto) as departamento from departamento;

select 
	emp.nome as Empregado, depto.nome as Departamento
from
	empregado emp, departamento depto
where
	depto.cod_depto=emp.cod_depto;
    
select 
emp.nome as Empregado, 
year(now()) - year(emp.dt_nascimento) as Idade,
year(now()) - year(emp.dt_admissao) as "Tempo de Servico"
from empregado emp;

-- Kauan (Deus)
select
	nome as Empregado,
	format((datediff(now(), dt_nascimento) / 365),0) as Idade,
	format((datediff(now(), dt_admissao) / 365),0) as Tempo_Empresa,
	date_format(date_sub(dt_admissao, interval 1 month), concat(year(now()), "- %m-%d")) as "1 Mês Antes"
from
	empregado;
    
-- professor
SELECT
    nome AS Empregado,
    FORMAT((DATEDIFF(NOW(), dt_nascimento) / 365), 0) AS idade,
    FORMAT((DATEDIFF(NOW(), dt_admissao) / 365), 0) AS tempo_empresa,
    DATE_FORMAT(DATE_SUB(dt_admissao, INTERVAL 1 MONTH), CONCAT(YEAR(CURDATE()), "/%m/%d")) AS ferias
FROM
    empregado;