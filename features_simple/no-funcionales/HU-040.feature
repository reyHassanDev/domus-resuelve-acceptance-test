Feature: Disponibilidad del servicio

Scenario: Disponibilidad mensual mínima
Given que la plataforma se encuentra en producción
When se mide la disponibilidad durante un mes
Then el sistema registra una disponibilidad de al menos [99 %]

Scenario: Mantenimiento programado con aviso previo
Given que se necesita un mantenimiento que interrumpe el servicio
When el equipo lo programa
Then el sistema avisa a los usuarios con al menos [24 horas] de anticipación
And el mantenimiento se ejecuta entre las [00:00] y las [05:00]
