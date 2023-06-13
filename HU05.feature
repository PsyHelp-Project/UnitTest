Feature: Agendar cita para el paciente

Scenario: El médico agenda una cita para un paciente
Given que el profesional de la salud identifica a un paciente con riesgo de contraer enfermedades psicológicas
When el profesional accede a la plataforma con sus credenciales de centro médico
And seleccione la opción "Agendar Cita para Paciente"
Then se presentará un formulario para completar con detalles como: nombre del paciente, fecha y hora y la modalidad de la cita
And seleccione "Agendar cita" se guardará en el sistema

Scenario Outline: El médico agenda una cita para un paciente con detalles específicos
Given que el profesional de la salud identifica a un paciente con riesgo de contraer enfermedades psicológicas
When el profesional accede a la plataforma con sus credenciales de centro médico
And seleccione la opción "Agendar Cita para Paciente"
And complete los campos obligatorios con los detalles de la cita como <nombre_paciente>, <fecha>, <hora>, y <modalidad>
Then la cita se agenda exitosamente en el sistema

Examples:
| nombre_paciente | fecha       | hora   | modalidad |
| Paciente A      | 2023-07-01  | 10:00  | Presencial   |
| Paciente B      | 2023-07-02  | 15:30  | Virtual   |
| Paciente C      | 2023-07-03  | 09:45  | Presencial   |

Scenario: Error al agendar una cita para el paciente
Given que el profesional de la salud identifica a un paciente con riesgo de contraer enfermedades psicológicas
When el profesional accede a la plataforma con sus credenciales de centro médico
And seleccione la opción "Agendar Cita para Paciente"
And complete los campos obligatorios con información inválida o faltante
Then se muestra un mensaje de error indicando que la cita no se puede agendar

Scenario Outline: Error al agendar una cita para el paciente con detalles inválidos
Given que el profesional de la salud identifica a un paciente con riesgo de contraer enfermedades psicológicas
When el profesional accede a la plataforma con sus credenciales de centro médico
And seleccione la opción "Agendar Cita para Paciente"
And complete los campos obligatorios con información inválida o faltante como <nombre_paciente>, <fecha>, <hora>, y <modalidad>
Then se muestra un mensaje de error indicando que la cita no se puede agendar

Examples:
| nombre_paciente | fecha       | hora   | modalidad |
|                | 2023-07-01  | 10:00  | Presencial   |
| Paciente A      |             | 15:30  | Virtual   |
| Paciente B      | 2023-07-02  |        | Presencial   |
