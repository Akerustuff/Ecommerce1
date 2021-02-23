# README

Task 6: El sistema actual cuenta solo con productos. El nuevo código busca implementar una nueva tabla Variant relacionada con la tabla Product y mediante el método visible_on_catalog? es posible determinar que productos se deben mostrar en el listado, haciendo visibles solo aquellos que tienen un stock mayor a 0.

Task 7: Se realizó una modificación en el modelo OrderItem donde se ha cambiado la relación que tenía con el modelo Product y ahora se encuentra relacionada directamente con el modelo Variant que actua como tabla intermedia entre este y los modelos Product, Color y Size. Además, el modelo Variant posee un atributo Stock para ayudar a identificar cuales productos estan disponibles para mostrarse en el listado de productos.

Task 8: Se realizó una prueba de concepto simple para la solicitud del cliente, proporcionando un aproximado de lo que podria ser la solución final. La prueba de concepto parte de una tabla en la cual se incluyen los dos cupones (podría separarse en dos, pero se optó por mantener el desarrollo lo más simple posible). Dentro del mismo modelo se incluye:
- Relación entre los modelos coupon y user.
- Método used_coupon para determinar si el cúpon ha sido utilizado.
- Método compute_total para determinar el monto a descontar, especificando el caso en el que el monto de descuento del cupón sea superior al precio del producto, lo que de igual manera se considera como un cupón usado y no genera un nuevo cupón.
- Aproximación del código que se debe agregar al controlador antes de realizar el pago.
- Aproximación del código que se debe agregar al controlador despues de realizar el pago.

Es importante resaltar que la prueba de concepto es una aproximación de una solución, no la solución totalmente madura y lista para implementar.
