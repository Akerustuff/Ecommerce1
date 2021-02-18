# README

Task 6: El sistema actual cuenta solo con productos. El nuevo código busca implementar una nueva tabla Variant relacionada con la tabla Product y mediante el método visible_on_catalog? es posible determinar que productos se deben mostrar en el listado, haciendo visibles solo aquellos que tienen un stock mayor a 0.

Task 7: Se realizó una modificación en el modelo OrderItem donde se ha cambiado la relación que tenía con el modelo Product y ahora se encuentra relacionada directamente con el modelo Variant que actua como tabla intermedia entre este y los modelos Product, Color y Size. Además, el modelo Variant posee un atributo Stock para ayudar a identificar cuales productos estan disponibles para mostrarse en el listado de productos.

