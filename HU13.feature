Feature: Visualizar la lista de pacientes

Scenario: Ver la lista de pacientes como médico
    Given que soy un médico registrado en el sistema
    When accedo a la función de visualizar la lista de pacientes
    Then se me muestra la lista completa de mis pacientes

Scenario: Ver la información detallada de un paciente
    Given que soy un médico registrado en el sistema
    When accedo a la función de visualizar la lista de pacientes
    And selecciono un paciente específico
    Then se me muestra la información detallada de ese paciente, incluyendo su historial médico y datos personales

Scenario: Visualizar la lista de pacientes exitosamente
Given que soy un médico
When accedo a la función de visualizar la lista de pacientes
Then se me muestra una lista con los pacientes registrados

Scenario Outline: Visualizar la lista de pacientes exitosamente con filtros
Given que soy un médico
When accedo a la función de visualizar la lista de pacientes
And aplico los siguientes filtros: <filtro1>, <filtro2>, <filtro3>
Then se me muestra una lista de pacientes que cumplen con los filtros

Examples:
| filtro1   | filtro2   | filtro3   |
| Por nombre | Por edad  | Por género |
| Por especialidad | Por fecha de registro |          |

Scenario: Error al visualizar la lista de pacientes
Given que soy un médico
When accedo a la función de visualizar la lista de pacientes
And ocurre un error al recuperar los datos del sistema
Then se muestra un mensaje de error indicando que no se pueden mostrar los pacientes en este momento

Scenario Outline: Error al visualizar la lista de pacientes con filtros
Given que soy un médico
When accedo a la función de visualizar la lista de pacientes
And aplico los siguientes filtros: <filtro1>, <filtro2>, <filtro3>
And ocurre un error al recuperar los datos del sistema
Then se muestra un mensaje de error indicando que no se pueden mostrar los pacientes en este momento con los filtros aplicados

Examples:
| filtro1   | filtro2   | filtro3   |
| Por nombre | Por edad  | Por género |
| Por especialidad | Por fecha de registro |          |

