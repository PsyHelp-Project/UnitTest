Feature: Confirmar Cita

Scenario Outline: El paciente recibe una notificación de una nueva cita agendada
Given que un profesional de la salud o el propio paciente ha agendado una cita con un especialista
When la cita es registrada en el sistema
Then el paciente recibirá una notificación de la nueva cita agendada, incluyendo información relevante como la fecha, hora, especialista y modalidad de la cita

Examples:
| fecha       | hora   | especialista    | modalidad  |
| 2023-07-01  | 10:00  | Psicólogo       | Presencial |
| 2023-07-02  | 15:30  | Psiquiatra      | Virtual    |
| 2023-07-03  | 09:45  | Terapeuta       | Presencial |

Scenario: Error al registrar una nueva cita
Given que un profesional de la salud o el propio paciente ha agendado una cita con un especialista
When la cita es registrada en el sistema con información inválida o faltante
Then se muestra un mensaje de error indicando que no se pudo registrar la cita

Scenario Outline: Error al registrar una nueva cita con detalles inválidos
Given que un profesional de la salud o el propio paciente ha agendado una cita con un especialista
When la cita es registrada en el sistema con información inválida o faltante como la <fecha>, <hora>, <especialista> o <modalidad>
Then se muestra un mensaje de error indicando que no se pudo registrar la cita

Examples:
| fecha       | hora   | especialista    | modalidad  |
|             | 10:00  | Psicólogo       | Presencial |
| 2023-07-01  |        | Psiquiatra      | Virtual    |
| 2023-07-02  | 15:30  |                 | Presencial |
