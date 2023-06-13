Feature: Enviar mensajes a los médicos

Scenario: El paciente se comunica con su médico a través del chat
Given que el paciente desea tener comunicación con su médico encargado
When el paciente abre la aplicación y presiona la opción de "chat"
Then se muestra el historial de conversaciones del paciente con su médico
And el paciente puede seleccionar al médico con el que desea comunicarse en el historial de chat
And el paciente puede enviar mensajes y recibir respuestas del médico para solventar sus dudas y mejorar la atención médica

Scenario Outline: El paciente se comunica con su médico a través del chat y envía mensajes específicos
Given que el paciente desea tener comunicación con su médico encargado
When el paciente abre la aplicación y presiona la opción de "chat"
Then se muestra el historial de conversaciones del paciente con su médico
And el paciente puede seleccionar al médico con el que desea comunicarse en el historial de chat
And el paciente puede enviar mensajes como <mensaje> al médico
And el médico puede responder al paciente con <respuesta>

Examples:
| mensaje                                 | respuesta                                                       |
| Hola, tengo una pregunta sobre mi medicación. | Claro, ¿en qué puedo ayudarte con respecto a tu medicación? |
| Necesito solicitar una cita.                  | Por supuesto, déjame verificar la disponibilidad y te confirmo.  |
| Tengo algunas dudas sobre los resultados de mis exámenes. | Entiendo, vamos a revisar los resultados juntos.       |
