Feature: Enviar mensajes a los pacientes

Scenario: El médico se comunica con un paciente a través del chat
Given que el médico está al tanto de todos sus pacientes asignados y busca brindarles una buena calidad de atención
When el médico presiona la opción de "chat"
Then se despliega el historial de chat del médico con sus pacientes
And el médico puede iniciar una conversación con un paciente seleccionándolo del historial de chat
And el médico puede enviar mensajes y recibir respuestas del paciente libremente en la conversación

Scenario Outline: El médico se comunica con un paciente a través del chat y envía mensajes específicos
Given que el médico está al tanto de todos sus pacientes asignados y busca brindarles una buena calidad de atención
When el médico presiona la opción de "chat"
Then se despliega el historial de chat del médico con sus pacientes
And el médico puede iniciar una conversación con un paciente seleccionándolo del historial de chat
And el médico puede enviar mensajes como <mensaje> al paciente
And el paciente puede responder al médico con <respuesta>

Examples:
| mensaje                          | respuesta                  |
| Hola, ¿cómo puedo ayudarte hoy?  | Estoy teniendo dolores de cabeza constantes. ¿Qué debo hacer?  |
| ¿Cuáles son tus síntomas?        | Tengo fiebre y dolor de garganta.                           |
| ¿Cómo te has sentido últimamente? | Me he sentido bastante cansado y sin energía.             |
