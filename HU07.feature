Feature: Solicitar cita

Scenario Outline: El usuario solicita una cita médica con un especialista
Given que el usuario está preocupado por su salud mental y necesita una evaluación por un especialista
When el usuario accede a la plataforma
And selecciona la opción "Solicitar Cita Médica"
Then se le presentará un formulario para completar con detalles como fecha y hora, Especialista, Razón para solicitar la cita médica o síntomas que presenta

Examples:
| fecha       | hora   | especialista    | razon                         |
| 2023-07-01  | 10:00  | Psicólogo       | Necesito ayuda con el estrés  |
| 2023-07-02  | 15:30  | Psiquiatra      | Estoy experimentando ansiedad |
| 2023-07-03  | 09:45  | Terapeuta       | Quiero hablar sobre mis problemas emocionales |

Scenario: Error al solicitar una cita médica
Given que el usuario está preocupado por su salud mental y necesita una evaluación por un especialista
When el usuario accede a la plataforma
And selecciona la opción "Solicitar Cita Médica"
And complete los campos obligatorios con información inválida o faltante
Then se muestra un mensaje de error indicando que la solicitud de cita no se puede realizar

Scenario Outline: Error al solicitar una cita médica con detalles inválidos
Given que el usuario está preocupado por su salud mental y necesita una evaluación por un especialista
When el usuario accede a la plataforma
And selecciona la opción "Solicitar Cita Médica"
And complete los campos obligatorios con información inválida o faltante como <fecha>, <hora>, <especialista>, y <razon>
Then se muestra un mensaje de error indicando que la solicitud de cita no se puede realizar

Examples:
| fecha       | hora   | especialista    | razon                         |
|             | 10:00  | Psicólogo       | Necesito ayuda con el estrés  |
| 2023-07-01  |        | Psiquiatra      | Estoy experimentando ansiedad |
| 2023-07-02  | 15:30  |                 | Quiero hablar sobre mis problemas emocionales |
