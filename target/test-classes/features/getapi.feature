Feature: GET API

Scenario: Get Api request

When url 'https://gorest.co.in/public/v2/users'
And path '30'
When method GET
Then status 200
* print response

Scenario: Get Api request-user is not available

When url 'https://gorest.co.in/public/v2/users'
And path '1'
When method GET
Then status 404

Scenario: Get API response with expected result

Given url 'https://gorest.co.in/public/v2/users'
And path '30'
When method GET
Then status 200
* print response
* print response.email
* print response.status

Scenario: Get api values 

Given url 'https://gorest.co.in/public/v2/users'
And path '30'
When method GET
Then status 200
* print response.name

Scenario: Get api values-Negative 

Given url 'https://gorest.co.in/public/v2/users'
And path '1'
When method GET
Then status 404
* print response
* print response.name