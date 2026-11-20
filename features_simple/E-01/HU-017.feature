Feature: Elegir categoría y ubicación de la falla

Scenario: Selección de categoría y ubicación
Given que el residente se encuentra en la pantalla "Nuevo reporte"
And ha seleccionado el [área común] afectada
When elige una [categoría] de la lista disponible
And indica la [ubicación] dentro del edificio
Then el sistema asocia la categoría y la ubicación al reporte
And las muestra en el resumen previo al envío

Scenario: Envío sin categoría
Given que el residente se encuentra en la pantalla "Nuevo reporte"
When hace clic en "Enviar" sin elegir una [categoría]
Then el sistema muestra el [mensaje] "Seleccione una categoría"
And no registra la incidencia
