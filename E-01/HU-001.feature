Feature: Reportar falla con foto

Scenario: Reporte exitoso con foto
Given que el residente inició sesión desde su celular
And se encuentra en la pantalla "Nuevo reporte"
When selecciona el [área común] y describe el [problema]
And adjunta una [foto]
And hace clic en el botón "Enviar"
Then el sistema registra la incidencia con estado "Recibido"
And muestra el [código de seguimiento]

Scenario: Reporte sin foto adjunta
Given que el residente se encuentra en la pantalla "Nuevo reporte"
When hace clic en "Enviar" sin adjuntar una [foto]
Then el sistema muestra el [mensaje] "Debe adjuntar al menos una foto"
And no registra la incidencia

Scenario: Reporte en máximo tres pasos
Given que el residente se encuentra en la pantalla "Nuevo reporte"
When selecciona el [área común], adjunta la [foto] y hace clic en "Enviar"
Then el sistema registra la incidencia sin solicitar pasos adicionales
