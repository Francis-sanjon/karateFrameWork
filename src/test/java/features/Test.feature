Feature: GET request

Scenario Outline: Get api request

Given url 'http://localhost:3000/employees'
And path '<id>'
When method GET
Then status <code>

Examples: 
|id|code|
|1|200|
|2|200|
|3|200|
|4|200|
|5|200|
|6|200|
|7|404|


