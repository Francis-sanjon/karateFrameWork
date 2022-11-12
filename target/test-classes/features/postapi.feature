Feature: Create user using post api

Background:
* url 'http://localhost:3000'
* def requestPayload =
"""
{
 "first_name": "Krishna",
  "last_name": "Sanjon",
  "email": "Francis-sanjon@gmail.com",
  "status": "Active"
}
"""

Scenario: Create a user with the given data

Given path '/employees'
And request requestPayload
When method POST
Then status 201
And match response.first_name == 'Krishna'
* print response 


