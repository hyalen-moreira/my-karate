#@ignore
Feature:

  Scenario: pathMatches('/users')
    * def responseStatus = 200
    * def response = { name: 'Hyalen Moreira' }

  Scenario: pathMatches('/users/{index}')
    * def responseStatus = 200
    * def response = { index: '#(pathParams.index)' }

  Scenario:
    * def responseStatus = 404