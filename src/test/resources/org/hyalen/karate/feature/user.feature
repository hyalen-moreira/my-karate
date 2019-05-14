Feature: User API

  Background:
#    * url baseUrl
    * url 'http://localhost:8080/api/karate-swagger'

  Scenario: Fetch all users
    Given path '/users'
    When method GET
    Then status 200
#      And match $ == {quote:'#notnull'}

