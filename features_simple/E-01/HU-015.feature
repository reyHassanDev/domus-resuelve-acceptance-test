Feature: Registrarse con el código del condominio

Scenario: Registro con código válido
Given que el residente se encuentra en la pantalla de registro
And cuenta con el [código] de su condominio
When ingresa el [código] y sus [datos personales]
And hace clic en el botón "Registrarse"
Then el sistema crea la cuenta del residente asociada a su [condominio]
And permite al residente reportar y consultar incidencias de su edificio

Scenario: Registro con código inválido
Given que el residente se encuentra en la pantalla de registro
When ingresa un [código] inexistente o vencido
And hace clic en el botón "Registrarse"
Then el sistema muestra el [mensaje] "El código ingresado no es válido"
And no crea la cuenta
