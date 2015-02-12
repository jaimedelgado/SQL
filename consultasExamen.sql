DROP TABLE Cajero cascade constraints;
DROP TABLE Producto cascade constraints;
DROP TABLE Venta cascade constraints;
DROP TABLE Maquina cascade constraints;
DROP TABLE Comision cascade constraints;

drop sequence SQventa;

CREATE TABLE Cajero (
cod VARCHAR(50) PRIMARY KEY,
nombre VARCHAR(100) not NULL,
departamento number(2,0));

CREATE TABLE Producto(
codprod VARCHAR(50) PRIMARY KEY,
descripcion VARCHAR(50) not NULL,
precio NUMBER(5,2) default 0);

CREATE TABLE Maquina(
codmaq VARCHAR(50) PRIMARY KEY,
piso NUMBER(1) not null);

CREATE TABLE Venta (
fecha date not null,
idventa number(4) primary key,
codprod VARCHAR(50) not null,
codmaq  VARCHAR(50) not null,
cod VARCHAR(50) not null,
FOREIGN KEY (codprod) REFERENCES Producto on delete cascade,
FOREIGN KEY (codmaq) REFERENCES Maquina on delete cascade,
FOREIGN KEY (cod) REFERENCES Cajero on delete cascade);

CREATE TABLE Comision(
fecha date not null,
cod VARCHAR(50) not null,
importe_com NUMBER(6,2) not null,
FOREIGN KEY (cod) REFERENCES Cajero on delete cascade);


CREATE SEQUENCE  SQVENTA;

insert into cajero values ('001','Pepe',1);
insert into cajero values ('002','Ana',1);
insert into cajero values ('003','Lola',2);
insert into cajero values ('004','Ana',2);
insert into cajero values ('005','Sara',2);

insert into maquina values ('M001',1);
insert into maquina values ('M002',2);
insert into maquina values ('M003',2);
insert into maquina values ('M004',4);

insert into producto values ('001','Corbata',65);
insert into producto values ('002','Gafas',165);
insert into producto values ('003','Bolso',220);
insert into producto values ('004','Anillo',369);
insert into producto values ('005','Agenda',120);
insert into producto values ('006','Cartera',185);
insert into producto values ('007','Bufanda',85);
insert into producto values ('008','Guantes',95);
insert into producto values ('009','Abanico',45);
insert into producto values ('010','Reloj',185);

insert into venta values (to_date('02/03/2012','dd/mm/yyyy'),500,'004','M002','001');
insert into venta values (to_date('02/01/2012','dd/mm/yyyy'),sqventa.nextval,'001','M001','001');
insert into venta values (to_date('02/01/2012','dd/mm/yyyy'),sqventa.nextval,'002','M001','002');
insert into venta values (to_date('02/01/2012','dd/mm/yyyy'),sqventa.nextval,'002','M002','002');
insert into venta values (to_date('02/01/2012','dd/mm/yyyy'),sqventa.nextval,'003','M003','005');
insert into venta values (to_date('04/02/2012','dd/mm/yyyy'),sqventa.nextval,'003','M004','004');
insert into venta values (to_date('02/03/2012','dd/mm/yyyy'),sqventa.nextval,'004','M002','001');
insert into venta values (to_date('12/04/2012','dd/mm/yyyy'),sqventa.nextval,'004','M004','001');
insert into venta values (to_date('12/04/2012','dd/mm/yyyy'),sqventa.nextval,'005','M004','003');
insert into venta values (to_date('20/05/2012','dd/mm/yyyy'),sqventa.nextval,'006','M003','002');
insert into venta values (to_date('21/05/2012','dd/mm/yyyy'),sqventa.nextval,'007','M001','001');
insert into venta values (to_date('26/06/2012','dd/mm/yyyy'),sqventa.nextval,'008','M001','004');
insert into venta values (to_date('27/06/2012','dd/mm/yyyy'),sqventa.nextval,'008','M004','004');
insert into venta values (to_date('28/06/2012','dd/mm/yyyy'),sqventa.nextval,'009','M003','005');
insert into venta values (to_date('30/06/2012','dd/mm/yyyy'),sqventa.nextval,'010','M003','003');
insert into venta values (to_date('15/07/2012','dd/mm/yyyy'),sqventa.nextval,'010','M002','002');
insert into venta values (to_date('18/07/2012','dd/mm/yyyy'),sqventa.nextval,'008','M004','001');
insert into venta values (to_date('02/08/2012','dd/mm/yyyy'),sqventa.nextval,'007','M001','001');
insert into venta values (to_date('06/08/2012','dd/mm/yyyy'),sqventa.nextval,'007','M003','001');
insert into venta values (to_date('08/09/2012','dd/mm/yyyy'),sqventa.nextval,'006','M002','003');
insert into venta values (to_date('12/09/2012','dd/mm/yyyy'),sqventa.nextval,'005','M001','003');
insert into venta values (to_date('15/09/2012','dd/mm/yyyy'),sqventa.nextval,'004','M002','005');
insert into venta values (to_date('17/09/2012','dd/mm/yyyy'),sqventa.nextval,'003','M001','005');
insert into venta values (to_date('19/10/2012','dd/mm/yyyy'),sqventa.nextval,'002','M003','005');
insert into venta values (to_date('20/11/2012','dd/mm/yyyy'),sqventa.nextval,'001','M003','003');
insert into venta values (to_date('30/11/2012','dd/mm/yyyy'),sqventa.nextval,'001','M002','002');
insert into venta values (to_date('10/12/2012','dd/mm/yyyy'),sqventa.nextval,'010','M003','001');
insert into venta values (to_date('10/12/2012','dd/mm/yyyy'),sqventa.nextval,'001','M002','001');
insert into venta values (to_date('10/12/2012','dd/mm/yyyy'),sqventa.nextval,'005','M002','005');
insert into venta values (to_date('11/12/2012','dd/mm/yyyy'),sqventa.nextval,'006','M001','003');
insert into venta values (to_date('11/12/2012','dd/mm/yyyy'),sqventa.nextval,'007','M001','003');
insert into venta values (to_date('11/12/2012','dd/mm/yyyy'),sqventa.nextval,'008','M004','001');
insert into venta values (to_date('12/12/2012','dd/mm/yyyy'),sqventa.nextval,'009','M004','001');
insert into venta values (to_date('13/12/2012','dd/mm/yyyy'),sqventa.nextval,'009','M004','003');
insert into venta values (to_date('15/12/2012','dd/mm/yyyy'),sqventa.nextval,'008','M003','003');
insert into venta values (to_date('16/12/2012','dd/mm/yyyy'),sqventa.nextval,'002','M003','003');
insert into venta values (to_date('18/12/2012','dd/mm/yyyy'),sqventa.nextval,'002','M001','003');
insert into venta values (to_date('19/12/2012','dd/mm/yyyy'),sqventa.nextval,'003','M001','001');
insert into venta values (to_date('19/12/2012','dd/mm/yyyy'),sqventa.nextval,'004','M001','001');
insert into venta values (to_date('20/01/2013','dd/mm/yyyy'),sqventa.nextval,'005','M001','005');
insert into venta values (to_date('22/01/2013','dd/mm/yyyy'),sqventa.nextval,'006','M001','005');
insert into venta values (to_date('22/01/2013','dd/mm/yyyy'),sqventa.nextval,'007','M003','003');
insert into venta values (to_date('22/01/2013','dd/mm/yyyy'),sqventa.nextval,'008','M003','001');
insert into venta values (to_date('22/01/2013','dd/mm/yyyy'),sqventa.nextval,'009','M001','004');
insert into venta values (to_date('24/01/2013','dd/mm/yyyy'),sqventa.nextval,'001','M001','001');
insert into venta values (to_date('24/01/2013','dd/mm/yyyy'),sqventa.nextval,'005','M001','002');
insert into venta values (to_date('24/01/2013','dd/mm/yyyy'),sqventa.nextval,'004','M001','003');
insert into venta values (to_date('24/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M001','001');
insert into venta values (to_date('24/01/2013','dd/mm/yyyy'),sqventa.nextval,'001','M002','002');
insert into venta values (to_date('24/01/2013','dd/mm/yyyy'),sqventa.nextval,'002','M002','001');
insert into venta values (to_date('24/01/2013','dd/mm/yyyy'),sqventa.nextval,'007','M001','001');
insert into venta values (to_date('27/01/2013','dd/mm/yyyy'),sqventa.nextval,'007','M001','004');
insert into venta values (to_date('27/01/2013','dd/mm/yyyy'),sqventa.nextval,'001','M004','005');
insert into venta values (to_date('28/01/2013','dd/mm/yyyy'),sqventa.nextval,'001','M003','005');
insert into venta values (to_date('28/01/2013','dd/mm/yyyy'),sqventa.nextval,'001','M001','001');
insert into venta values (to_date('28/01/2013','dd/mm/yyyy'),sqventa.nextval,'001','M004','001');
insert into venta values (to_date('28/01/2013','dd/mm/yyyy'),sqventa.nextval,'001','M004','001');
insert into venta values (to_date('28/01/2013','dd/mm/yyyy'),sqventa.nextval,'001','M001','001');
insert into venta values (to_date('28/01/2013','dd/mm/yyyy'),sqventa.nextval,'001','M001','003');
insert into venta values (to_date('28/01/2013','dd/mm/yyyy'),sqventa.nextval,'002','M001','001');
insert into venta values (to_date('28/01/2013','dd/mm/yyyy'),sqventa.nextval,'005','M001','002');
insert into venta values (to_date('28/01/2013','dd/mm/yyyy'),sqventa.nextval,'007','M001','002');
insert into venta values (to_date('28/01/2013','dd/mm/yyyy'),sqventa.nextval,'008','M002','005');
insert into venta values (to_date('28/01/2013','dd/mm/yyyy'),sqventa.nextval,'009','M002','005');
insert into venta values (to_date('28/01/2013','dd/mm/yyyy'),sqventa.nextval,'001','M004','005');
insert into venta values (to_date('28/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M003','003');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M002','002');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M004','005');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M003','005');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M001','001');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M004','001');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M004','001');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M001','001');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M004','001');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M001','001');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M001','003');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M003','003');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M002','003');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M004','003');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M003','003');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M001','003');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M004','003');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M004','003');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M001','003');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M001','003');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M004','003');
insert into venta values (to_date('29/01/2013','dd/mm/yyyy'),sqventa.nextval,'003','M001','003');



-- Consultas
-- a. Codigo, descripcion y numero de ventas de cada producto ordenado por numero de ventas
select codprod, descripcion, count(idventa) "Ventas"
from producto natural join venta
group by codprod, descripcion
order by count(idventa);

-- b. Codigo y nombre de los cajeros que han realizado el mayor numero de ventas
select cod, nombre, count(idventa) "Ventas"
from cajero natural join venta
group by cod, nombre
order by count(idventa);

-- c. Empleados que solo han vendido productos de importe superios a 300 euros
select cod, nombre
from cajero natural join venta natural join producto
where precio>300 and cod not in 
(select cod
from cajero natural join venta natural join producto
where precio<300);

--Comprobacion del c
select cod, nombre, max(precio), min(precio)
from cajero natural join venta natural join producto
group by cod, nombre;

-- d. Codigo y nombre de cajeros que han hecho mas de una venta de un mismo producto en la misma fecha
select cod, nombre
from cajero natural join venta natural join producto
having count(idventa)>1
group by cod, nombre, fecha
order by fecha;

-- e. Codigo y nombre de cajeros que han hecho ventas en pisos cuyas ventas totales superan los 3000 euros
select cod, nombre
from cajero natural join venta natural join producto natural join maquina
where piso in 
(select piso
from cajero natural join venta natural join producto natural join maquina
having sum(precio)>3000
group by piso)
group by cod, nombre;

--Comprobacion del e
select piso, sum(precio)
from cajero natural join venta natural join producto natural join maquina
group by piso;

  /
create or replace 
PROCEDURE "funcion"(
    minVentas  IN NUMBER,
    porcentaje IN NUMBER)
IS
  cursor cursorCajeros is
  SELECT cod, nombre, SUM(precio) as gananciasC
  FROM cajero NATURAL JOIN venta NATURAL JOIN producto
  GROUP BY cod, nombre;
BEGIN
  for i in cursorCajeros loop
    IF(i.gananciasC>minVentas) THEN
      INSERT INTO comision VALUES(to_date('29/01/2013','dd/mm/yyyy'), i.cod, i.gananciasC*porcentaje/100);
    END IF;
  end loop;
/*EXCEPTION
WHEN no_data_found THEN
  dbms_output.put_line('Error');
WHEN too_many_rows THEN
  dbms_output.put_line('Error');*/
END;
/

create or replace 
TRIGGER "examen" 
before INSERT ON venta 
FOR EACH row 
DECLARE 
  mayorProd producto.codprod%type;
  mayorPrecio producto.precio%type;
  BEGIN
    select max(precio) into mayorPrecio
    from producto;
  
    SELECT codprod INTO mayorProd
    FROM producto
    where precio = mayorPrecio;
 
    
    IF (mayorProd = :new.codprod) THEN
      INSERT INTO comision VALUES(:new.fecha, :new.cod, mayorPrecio/10);
    END IF;
    
END;
  
  
  
  /