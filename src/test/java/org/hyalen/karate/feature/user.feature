Feature: User API

  Background:
    * url mockServerUrl

  Scenario: Fetch all users
    Given path 'users'
    When method GET
    Then status 200
    And print 'CALIFORNIA --->' + path
    And match $ == {name:'Hyalen Moreira'}

  Scenario: Fetch user by index
    Given path 'users/1'
    When method GET
    Then status 200
    And match $ == {index:'1'}

  Scenario: Fetch all users
    Given path 'dummy'
    When method GET
    Then status 404
#    And print 'CALIFORNIA --->' + path
#    And match $ == {name:'Hyalen Moreira'}

  Scenario: Create an user
    Given path 'users'
    And request { userId : '111'}
    When method POST
    Then status 201
    And match response == {id : '111'}