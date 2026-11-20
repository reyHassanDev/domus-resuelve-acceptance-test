Feature: Rendimiento del panel y del envío de reportes

Scenario: Carga del panel con alto volumen de incidencias
Given que el condominio tiene [500 incidencias] registradas
When el administrador abre el panel de incidencias con conexión [4G]
Then el sistema muestra el listado en un máximo de [3 segundos]

Scenario: Tiempo de envío de un reporte con foto
Given que el residente adjunta una [foto] de cierto [tamaño] a su reporte
When hace clic en "Enviar" con una [conexión]
Then el sistema confirma el registro en un máximo de [tiempo máximo]
