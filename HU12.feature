Feature: Visualizar tratamiento del paciente

Scenario: El paciente y el médico revisan el tratamiento del paciente
Given que tanto el paciente como el médico desean revisar el progreso del tratamiento
When ambos seleccionan el botón de "Tratamiento"
Then se muestra el tratamiento detallado del paciente

Scenario Outline: El paciente y el médico revisan el tratamiento del paciente con detalles específicos
Given que tanto el paciente como el médico desean revisar el progreso del tratamiento
When ambos seleccionan el botón de "Tratamiento"
Then se muestra el tratamiento detallado del paciente, incluyendo <detalle_tratamiento>

Examples:
| detalle_tratamiento                                       |
| El paciente debe tomar la medicación dos veces al día.    |
| Se recomienda al paciente realizar ejercicio diariamente. |
| El paciente debe seguir una dieta baja en grasas.         |
