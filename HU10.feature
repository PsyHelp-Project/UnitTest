Feature: Registrar emociones

Scenario: Los pacientes desean registrar sus emociones en el transcurso del día
Given que el paciente desea registrar sus emociones
When el paciente accede a la aplicación y se encuentra en el apartado de tratamiento
And el paciente presiona el botón de "registro de emociones"
Then la aplicación lo redirige a un apartado didáctico para registrar de manera óptima sus emociones

Scenario Outline: Registrar emociones de manera óptima
Given que el paciente se encuentra en el apartado de registro de emociones
When el paciente selecciona la opción <opcion_emocion> en la aplicación
And el paciente ingresa una descripción de la emoción: "<descripcion_emocion>"
And el paciente registra la fecha y hora de la emoción
Then la aplicación confirma el registro exitoso de la emoción

Examples:
| opcion_emocion | descripcion_emocion       |
| Felicidad      | Me siento muy contento    |
| Tristeza       | Me siento bastante triste |
| Enojo          | Estoy muy enojado         |
