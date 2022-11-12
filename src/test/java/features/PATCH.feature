Feature: Create user using post api

Background:
* url 'http://localhost:3000'
* def requestPayload =
"""
{
 "first_name": "Francis554",
  "last_name": "Sanjon",
  "email": "Francis-sanjon@gmail.com",
  "status": "Active"
}
"""
Scenario: Create a user with the given data

Given path '/employees'
And request requestPayload
And path '5'
When method PATCH
Then status 200
* print response
