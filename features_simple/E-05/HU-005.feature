Feature: Asignar incidencia a un proveedor

Scenario: Asignar un proveedor a la incidencia
Given que el administrador está viendo una incidencia que no tiene proveedor
And hay proveedores registrados en el directorio
When elige un [proveedor] de la lista
And hace clic en el botón "Asignar"
Then el sistema vincula al proveedor con el ticket
And cambia el estado del ticket a "Proveedor asignado"

Scenario: Directorio vacío
Given que el administrador está viendo una incidencia que no tiene proveedor
And no hay proveedores registrados
When hace clic en el botón "Asignar"
Then el sistema muestra el [mensaje] "Registre un proveedor para asignar la incidencia"
And no realiza la asignación
