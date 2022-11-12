Feature: Create user using post api

Background:
* url 'http://localhost:3000'
* def requestPayload =
"""
{
 "first_name": "Francis112",
  "last_name": "Sanjon",
  "email": "Francis-sanjon@gmail.com",
  "status": "Active"
}
"""
Scenario: Create a user with the given data

Given path '/employees'
And path '6'
When method DELETE
Then status 200
