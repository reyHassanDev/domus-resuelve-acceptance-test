Feature: Usabilidad en dispositivos móviles

Scenario: Visualización adaptable según el dispositivo
Given que el residente abre la pantalla "Nuevo reporte" en un celular [Android o iOS]
When la pantalla termina de cargar
Then el sistema muestra todos los campos sin desplazamiento horizontal

Scenario: Elementos táctiles de tamaño adecuado
Given que el residente usa la plataforma desde un celular
When observa los botones y selectores de "Nuevo reporte"
Then cada elemento táctil tiene un área de al menos [44 × 44 px]
