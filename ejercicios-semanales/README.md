# Ejercicios Semanales de SQL

## Objetivo
El objetivo es mantener el conocimiento de realizar consultas con `JOIN`, `GROUP BY` y `ORDER BY` y funciones agregadas. Aprovechar que se repasó nuevamente los temas para parcial de la facultad.

## Configurar entorno de prueba

El entorno de prueba está configurado con Docker.

Para iniciar la base de datos:
```bash
docker compose up -d
```

Para conectar a la base de datos:
```bash
mysql -h 127.0.0.1 -u user -p 
```

Y la contraseña de acceso es `password`.

---

## Tablas
### Tabla clientes
(100 registros)
| Campo  | Tipo de Dato | Descripción                  |
|--------|--------------|------------------------------|
| id     | INTEGER      | ID único del cliente (PK)    |
| nombre | TEXT         | Nombre completo              |
| email  | TEXT         | Correo electrónico           |
| fecha  | DATE         | Fecha de registro            |


### Tabla productos
(80 registros)
| Campo    | Tipo de Dato | Descripción                      |
|----------|--------------|----------------------------------|
| id       | INTEGER      | ID único del producto (PK)       |
| nombre   | TEXT         | Nombre del producto              |
| precio   | INTEGER      | Precio del producto en pesos     |
| categoria| TEXT         | Categoría de producto            |

### Tabla ventas
(50 registros)
| Campo       | Tipo de Dato | Descripción                              |
|-------------|--------------|------------------------------------------|
| id          | INTEGER      | ID único de la orden (PK)                |
| cliente_id  | INTEGER (FK) | ID del cliente que realiza la orden      |
| producto_id | INTEGER (FK) | ID del producto comprado                 |
| cantidad    | INTEGER      | Cantidad de productos comprados          |
| fecha       | DATE         | Fecha de la compra                       |

---

## Ejercicios

1. Mostrar todos los clientes ordenados por nombre  
2. Listar productos ordenados por precio descendente  
3. Mostrar las 5 órdenes más recientes  
4. Contar cuántos productos hay en cada categoría  
5. Mostrar el total gastado por cada cliente  
6. Listar clientes que nunca han realizado una orden  
7. Mostrar productos con precio mayor al promedio  
8. Encontrar el producto más caro vendido  
9. Mostrar cuántas órdenes hay por mes  
10. Listar clientes y la cantidad de productos distintos que compraron  
11. Mostrar el producto más vendido (por cantidad total)  
12. Listar órdenes con su monto total (precio × cantidad)  
13. Mostrar clientes que gastaron más de $1000  
14. Encontrar productos que no se han vendido nunca  
15. Mostrar el cliente que más órdenes ha realizado  
16. Listar productos con menos de 5 unidades vendidas  
17. Mostrar el promedio de gasto por cliente  
18. Encontrar clientes con compras en los últimos 30 días  
19. Mostrar productos de la categoría "Electrónicos" ordenados por precio  
20. Listar clientes y su última fecha de compra  
21. Mostrar órdenes del mes actual  
22. Encontrar productos comprados por más de 3 clientes distintos  
23. Mostrar clientes que compraron todos los productos de una categoría  
24. Listar productos con su cantidad total vendida  
25. Mostrar el cliente que más ha gastado en total  
26. Encontrar productos con precio entre 50 y 200  
27. Mostrar órdenes con cantidades superiores al promedio  
28. Listar clientes y cuánto gastaron en el último mes  
29. Mostrar productos que han aumentado de precio  
30. Encontrar clientes con el mismo nombre  
31. Mostrar categorías ordenadas por cantidad de productos  
32. Listar clientes que compraron en meses consecutivos  
33. Mostrar productos frecuentemente comprados juntos  
34. Encontrar órdenes con montos atípicos (fuera del 95% percentil)  
35. Mostrar clientes inactivos (sin compras en 6 meses)  
36. Listar productos con descuento (precio actual vs histórico)  
37. Mostrar el crecimiento mensual de ventas  
38. Encontrar clientes con patrones de compra similares  
39. Mostrar productos con mejor relación precio/cantidad vendida  
40. Listar clientes y sus productos comprados más frecuentemente  
41. Mostrar el total vendido por categoría de producto  
42. Encontrar clientes que compraron todos los productos de una categoría  
43. Mostrar productos que nunca se vendieron juntos  
44. Listar clientes por cantidad de órdenes realizadas  
45. Mostrar el promedio de productos por orden  
46. Encontrar productos con ventas estacionales  
47. Mostrar clientes con gasto creciente mes a mes  
48. Listar productos con precios superiores al promedio de su categoría  
49. Mostrar órdenes con cantidades anormalmente altas  
50. Encontrar clientes con compras en todas las categorías  
51. Mostrar el porcentaje que representa cada categoría en las ventas totales  
52. Listar clientes por antigüedad (fecha de registro)  
53. Mostrar productos con mayor rotación (cantidad vendida/tiempo)  
54. Encontrar clientes con comportamiento de compra similar al cliente X  
55. Mostrar tendencias de compra por día de la semana  
56. Listar productos que siempre se venden en cantidades mayores a 3  
57. Mostrar clientes que compran los mismos productos cada mes  
58. Encontrar productos con precios fuera del rango normal de su categoría  
59. Mostrar el valor promedio de las órdenes por cliente  
60. Listar clientes que compraron al menos un producto de cada categoría  
61. Mostrar la categoría con mayor crecimiento interanual  
62. Encontrar productos con demanda estable (poca variación en ventas mensuales)  
63. Mostrar clientes con mayor frecuencia de compra (órdenes por mes)  
64. Listar productos que se venden mejor en ciertas épocas del año  
65. Mostrar el ticket promedio por orden por categoría  
66. Encontrar clientes que siempre compran los mismos productos  
67. Mostrar productos con mayor margen de ganancia  
68. Listar clientes por valor de vida del cliente (CLV)  
69. Mostrar correlación entre precio y cantidad vendida  
70. Encontrar productos que actúan como "gancho" para otras compras  
71. Mostrar clientes con mayor potencial de upsell  
72. Listar productos que deberían tener descuento por bajo movimiento  
73. Mostrar estacionalidad en las compras por categoría  
74. Encontrar clientes con riesgo de abandono (disminución en frecuencia de compra)  
75. Mostrar productos que generan ventas cruzadas  
76. Listar clientes por segmentos de valor (alto, medio, bajo)  
77. Mostrar eficiencia de inventario (ventas vs tiempo en stock)  
78. Encontrar productos con precios no competitivos  
79. Mostrar clientes con mayor probabilidad de responder a promociones  
80. Listar productos que deberían ser retirados del catálogo  
81. Mostrar relación entre frecuencia de compra y valor promedio de órdenes  
82. Encontrar clientes que podrían beneficiarse de programas de fidelización  
83. Mostrar productos con mayor elasticidad precio-demanda  
84. Listar clientes con mayor potencial para compras recurrentes  
85. Mostrar impacto de promociones pasadas en ventas  
86. Encontrar productos que funcionan bien como paquetes  
87. Mostrar clientes con comportamiento de compra similar a grandes compradores  
88. Listar productos con mayor probabilidad de agotarse  
89. Mostrar correlación entre categorías de productos comprados  
90. Encontrar clientes que podrían estar interesados en nuevos productos  
91. Mostrar productos con mayor tasa de retorno (devoluciones)  
92. Listar clientes con mayor engagement (interacción con múltiples productos)  
93. Mostrar efectividad de descuentos por categoría  
94. Encontrar productos que generan lealtad de cliente  
95. Mostrar clientes con mayor potencial para referidos  
96. Listar productos con mejor recepción en diferentes demográficos  
97. Mostrar tendencias de compra por hora del día  
98. Encontrar productos que generan mayor satisfacción del cliente  
99. Mostrar clientes con mayor probabilidad de compras impulsivas  
100. Listar productos estratégicos para promociones de temporada  
