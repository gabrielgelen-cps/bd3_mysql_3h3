delimiter $$
create procedure sps_dissidio (in taxa decimal(3,2))
begin
create temporary table tmp_dissidio
select *, (salario * taxa) as aumento from empregado where cod_emp > 0;

select * from tmp_dissidio;
drop table tmp_dissidio;
end $$
delimiter ;

call sps_dissidio(1.15);

delimiter $$
create procedure spu_dissidio_aplicar (in taxa decimal(3,2))
begin
start transaction;
update empregado set salario = (salario + (salario * taxa)) where cod_emp > 0;
end 
$$
delimiter ;
call spu_dissidio_aplicar(0.15);

rollback;
select * from empregado;
commit;