# Resuelve – Pruebas de aceptación

Repositorio con las pruebas de aceptación (Acceptance Tests) del producto **Resuelve**, de la startup **Domus**.

- Curso: 1ASI0397 Especificación y Análisis de Requisitos (UPC)
- NRC: 16925
- Entrega: Cuarto Avance, Final Project

## Contenido

Un archivo `.feature` por historia de usuario, escrito en Gherkin y organizado por épica.

```
├── E-01/
│   ├── HU-001.feature
│   ├── HU-015.feature
│   └── HU-017.feature
├── E-05/
│   ├── HU-004.feature
│   ├── HU-005.feature
│   ├── HU-006.feature
│   ├── HU-014.feature
│   ├── HU-026.feature
│   └── HU-027.feature
└── no-funcionales/
    ├── HU-038.feature
    ├── HU-039.feature
    ├── HU-040.feature
    └── HU-041.feature
```

## Historias cubiertas

| Carpeta | Historias | Descripción |
|---|---|---|
| E-01 | HU-001, HU-015, HU-017 | Acceso y reporte de incidencias |
| E-05 | HU-004, HU-005, HU-006, HU-014, HU-026, HU-027 | Asignación y seguimiento de trabajos |
| no-funcionales | HU-038, HU-039, HU-040, HU-041 | Seguridad, rendimiento, disponibilidad y usabilidad móvil |

## Cómo leer un archivo

Cada archivo describe una historia (`Feature`) y sus escenarios (`Scenario`) con los pasos `Given`, `When`, `Then` y `And`. Los datos que cambian en cada prueba van entre corchetes, por ejemplo `[código]` o `[mensaje]`.

```gherkin
Feature: Registrarse con el código del condominio

Scenario: Registro con código inválido
Given que el residente se encuentra en la pantalla de registro
When ingresa un [código] inexistente o vencido
And hace clic en el botón "Registrarse"
Then el sistema muestra el [mensaje] "El código ingresado no es válido"
And no crea la cuenta
```
