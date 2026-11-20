Feature: Registrar proveedor

Scenario: Registro exitoso de proveedor
Given que el administrador se encuentra en el formulario "Nuevo Proveedor"
When ingresa el [RUC], la [razón social], la [especialidad] y el [teléfono]
And hace clic en el botón "Guardar Proveedor"
Then el sistema registra al proveedor en el directorio
And muestra el [mensaje] "Proveedor registrado con éxito"

Scenario: RUC duplicado
Given que el administrador intenta registrar un proveedor
When ingresa un [RUC] que ya está registrado
Then el sistema muestra el [mensaje] "El RUC ingresado ya se encuentra registrado"
And impide el registro del duplicado
