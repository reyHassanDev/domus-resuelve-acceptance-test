Feature: Enviar orden de trabajo con fotos

Scenario: Mandar la orden al proveedor
Given que el administrador ya asignó un [proveedor] a la incidencia
When hace clic en el botón "Enviar orden de trabajo"
Then el sistema envía al proveedor la orden con la descripción, las fotos y la ubicación
And guarda la fecha y hora en que se envió

Scenario: Intentar enviar sin proveedor
Given que la incidencia aún no tiene proveedor asignado
When el administrador hace clic en el botón "Enviar orden de trabajo"
Then el sistema muestra el [mensaje] "Asigne un proveedor antes de enviar la orden"
And no envía la orden
