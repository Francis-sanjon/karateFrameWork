Feature: json feature testing

Scenario: json reader parser

* def jsonObject =
"""
[
{
"Name":"Francis",
"city":"Chennai",
"Age":25
},
{
"Name":"Ajith",
"city":"Chennai",
"Age":25
}
]
"""

* print jsonObject[0].Name
* print jsonObject[0].Age
* print jsonObject[0].city