Feature: Recibir alerta por incidencia fuera de plazo

Scenario: Notificación automática por vencimiento del plazo
Given que el administrador tiene un [reporte] pendiente con un [plazo de atención] establecido
When el reporte supera el plazo sin ser atendido
Then la plataforma envía una alerta al administrador
And el aviso indica el [reporte] afectado y el [tiempo de retraso]

Scenario: Reporte solucionado dentro del tiempo establecido
Given que el administrador tiene un [reporte] pendiente con un [plazo de atención] definido
When cambia el estado del reporte a "Resuelta" antes de que venza el plazo
Then la plataforma no emite ninguna alerta de vencimiento
