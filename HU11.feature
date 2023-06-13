Feature: Visualizar la receta del paciente

Scenario: El paciente visualiza su receta en la aplicación
Given que el paciente quiere poder ver su receta en la aplicación
When el paciente presione en el apartado "Visualizar receta"
Then la aplicación comprobará el ID del paciente y mostrará todos los medicamentos asignados al paciente

Scenario Outline: El paciente visualiza su receta en la aplicación con detalles específicos
Given que el paciente quiere poder ver su receta en la aplicación
When el paciente presione en el apartado "Visualizar receta"
Then la aplicación comprobará el ID del paciente y mostrará los medicamentos asignados al paciente, incluyendo <medicamentos>

Examples:
| medicamentos                                      |
| Paracetamol 500mg cada 6 horas                    |
| Amoxicilina 250mg cada 8 horas                    |
| Ibuprofeno 400mg cada 12 horas                    |
| Atorvastatina 20mg una vez al día antes de dormir |
