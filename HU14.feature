Feature: Buscar enfermedades

Scenario: Búsqueda de enfermedades exitosa
Given que el paciente desee buscar alguna enfermedad
And se encuentre en la sección "Inicio"
When seleccione la opción "Búsqueda", se mostrará una barra de búsqueda
And escriba el nombre de la enfermedad en la barra de búsqueda
Then se mostrará la información de la enfermedad

Scenario Outline: Búsqueda de enfermedades exitosa con detalles específicos
Given que el paciente desee buscar alguna enfermedad
And se encuentre en la sección "Inicio"
When seleccione la opción "Búsqueda", se mostrará una barra de búsqueda
And escriba el nombre de la enfermedad <enfermedad> en la barra de búsqueda
Then se mostrará la información de la enfermedad

Examples:
| enfermedad              |
| Diabetes                |
| Hipertensión            |
| Enfermedad de Lyme      |
| Asma                    |
| Artritis reumatoide     |
| Enfermedad de Parkinson |

Scenario: Búsqueda de enfermedades no exitosa
Given que el paciente desee buscar alguna enfermedad
And esta enfermedad no se encuentre registrada en la base de datos
When seleccione la opción "Búsqueda", se mostrará una barra de búsqueda
And escriba el nombre de la enfermedad en la barra de búsqueda
Then aparecerá un mensaje de error

Scenario Outline: Búsqueda de enfermedades no exitosa con detalles específicos
Given que el paciente desee buscar alguna enfermedad
And esta enfermedad no se encuentre registrada en la base de datos
When seleccione la opción "Búsqueda", se mostrará una barra de búsqueda
And escriba el nombre de la enfermedad <enfermedad> en la barra de búsqueda
Then aparecerá un mensaje de error indicando que la enfermedad <enfermedad> no se encontró en la base de datos

Examples:
| enfermedad              |
| Enfermedad X            |
| Enfermedad Y            |
| Enfermedad Z            |
| Enfermedad rara A       |
| Enfermedad rara B       |
| Enfermedad rara C       |
