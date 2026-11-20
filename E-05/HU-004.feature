Feature: Actualizar estado de la incidencia

Scenario: Modificar el estado de la incidencia
Given que el administrador está viendo el detalle de una incidencia en estado [Recibido]
When cambia el [estado] a [En proceso]
And hace clic en "Guardar cambios"
Then el sistema actualiza el estado de la incidencia
And el residente puede ver el nuevo estado en el detalle de su reporte

Scenario: Agregar un comentario de avance
Given que el administrador está viendo el detalle de una incidencia
When escribe un [comentario de avance]
And hace clic en "Guardar cambios"
Then el sistema guarda el comentario junto con la fecha y hora
And el residente puede leerlo en el detalle de su reporte

Scenario: Definir la fecha estimada de resolución
Given que el administrador está viendo el detalle de una incidencia
When ingresa una [fecha estimada de resolución]
And hace clic en "Guardar cambios"
Then el sistema guarda la fecha en la incidencia
And el residente puede verla en el detalle de su reporte
