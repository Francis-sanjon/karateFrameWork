Feature: Create user using post api

Background:
* url 'http://localhost:3000'
* def requestPayload =
"""
{
 "first_name": "Krishna123",
  "last_name": "Sanjon",
  "email": "Francis-sanjon@gmail.com",
  "Company":"Annular Technologies",
  "status": "Active"
}
"""
Scenario: Create a user with the given data

Given path '/employees'
And request requestPayload
And path '6'
When method PUT
Then status 200
* print response
