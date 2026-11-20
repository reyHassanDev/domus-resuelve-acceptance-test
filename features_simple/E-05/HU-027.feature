Feature: Consultar directorio de proveedores

Scenario: Búsqueda de proveedor por especialidad
Given que el administrador ingresa al módulo "Directorio de Proveedores"
When selecciona el filtro de [especialidad]
Then el sistema muestra la lista de proveedores de esa especialidad
And muestra el [contacto] y la [calificación] de cada uno

Scenario: Búsqueda sin resultados
Given que el administrador filtra por una [especialidad] sin proveedores registrados
When la búsqueda no encuentra coincidencias
Then el sistema muestra el [mensaje] "No se encontraron proveedores para esta especialidad"
