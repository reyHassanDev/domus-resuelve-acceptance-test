Feature: Control de acceso por rol y condominio

Scenario: Residente sin acceso al panel de administración
Given que un residente inició sesión
When intenta abrir el [panel de incidencias] del administrador
Then el sistema le niega el acceso con el [mensaje] "No tiene permisos para ver esta sección"
And registra el intento

Scenario: Aislamiento de información entre condominios
Given que existen incidencias de más de un [condominio]
When un usuario consulta el listado de incidencias
Then el sistema muestra solo las incidencias de su [condominio]
And no muestra ninguna de otro condominio

Scenario: Cierre de sesión por inactividad
Given que un usuario inició sesión
When pasan [30 minutos] sin actividad
Then el sistema cierra la sesión
And solicita iniciar sesión nuevamente
