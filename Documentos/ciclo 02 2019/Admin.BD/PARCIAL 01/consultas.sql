1.

select m.nombre
from miembro m, asistente a, superpachanga s
where a.nombre

2. 
select *
from proyecto p
order by p.monto_acomulado desc
fetch first 1 rows only
- menor
select * 
from proyecto p 
order by p.monto_acomulado asc
fetch first 1 rows only

3. 

select date_part('year', c.implatancion_fecha_inicio) as "anyo" ,sum(c.implatacion_precio)
from contrata c
group by anyo

4. 
select c.dui, c.denominacion, c.tipo, (co.implantacion_precio+co.mantenimiento_precio) as total_monto
from contrata co, cliente c
where c.dui= co.dui_cliente
order by total_monto desc

5. 

select p.tipo, sum(p.monto_acumulado) as "monto acumulado"

from  proyecto p left join web w
on p.codigo = w.codigo_proyecto 
left join venta_almacen v
on p.codigo = v.codigo_proyecto
left 
join erp e
on p.codigo = e.codigo_proyecto 

group by p.tipo

order by "monto acumulado" desc





6.
select tipo,sum(monto_acumulado) from proyecto
group by tipo
having sum(monto_acumulado)> '100000'
order by sum(monto_acumulado) asc;

7.
select pr.denominacion, s.nombre from presenta p
full join superpachanga s
on  p.nombre_superpachanga=s.nombre
full join proyecto pr
on p.codigo_proyecto = pr.codigo;

8.
select pr.denominacion, v.numero from version v, proyecto pr
where v.codigo_proyecto = pr.codigo AND v.numero > 1;

9.
select macro.codigo, macro.denominacion from proyecto_parte, proyecto sub, proyecto macro
where codigo_subproyecto = sub.codigo
and codigo_macroproyecto = macro.codigo
and sub.denominacion = 'aulavirt';

10.
select codigo, denominacion
from proyecto
where codigo in (
with recursive macroproyectos (codigo)
as(
select codigo_macroproyecto from proyecto_parte,proyecto
where codigo_subproyecto = codigo
and denominacion = 'aulavirt'
union all
select codigo_macroproyecto
from proyecto_parte p, macroproyectos m
where codigo_subproyecto = m.codigo
)
select codigo
from macroproyectos
)
order by codigo;
