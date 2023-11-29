/* Ejercicios Propuestos 1
 1. Obtener una lista de todos los productos
indicando para cada uno su idfab, idproducto,
descripción, precio y precio con I.G.I.C.
incluido (es el precio anterior aumentado en un
6%). */

SELECT p.idfab, p.idproducto, p.descripcion, p.precio, p.precio * 1.07 AS "Precio Más I.G.I.C." FROM productos p;

/* 2. De cada producto queremos saber su
código, fabricante, descripción, unidades en
stock, precio unitario y valor del inventario. */

SELECT p.idproducto, p.idfab, p.descripcion, p.stock, p.precio, p.precio * p.stock AS "Total del Stock" FROM productos p;

/* 3. Listar de cada empleado su nombre, nº
de días que lleva trabajando en la empresa
y su año de nacimiento (suponiendo que
este año ya ha cumplido años). Curdate() */

SELECT e.nombre, YEAR(CURRENT_DATE) - e.edad "Año de Nacimineto", YEAR(e.fcontrato) * 365 "Días en la Empresa" FROM empleados e;

