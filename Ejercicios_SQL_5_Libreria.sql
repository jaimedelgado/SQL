/* EJERCICIO 1 */
select autor, a�o
from Autor_libro natural join libro
order by a�o;

/* EJERCICIO 2 */
select titulo, a�o
from libro
where a�o > 2000
order by a�o;

/* EJERCICIO 3 */
select idcliente, nombre
from cliente natural join pedido
order by nombre;

/* EJERCICIO 4 */
select idcliente, nombre
from (libros_pedido natural join pedido) natural join cliente
where ISBN = '4554672899910';

/* EJERCICIO 5 */
select idcliente, nombre, isbn
from (libros_pedido natural join pedido)  natural join cliente
where nombre like '%San%';

/* EJERCICIO 6 */
select idcliente, nombre
from ((libros_pedido natural join pedido)natural join libro) natural join cliente
where precioventa > 10;

/* EJERCICIO 7 */
select idcliente, fechapedido
from pedido
group by idcliente, fechapedido
having count(*) > 1;

/* EJERCICIO 8 */
