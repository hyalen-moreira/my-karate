#@ignore
Feature:
  Background:
    * def param = {}

  Scenario: pathMatches('/users') && methodIs('get')
    * def responseStatus = 200
    * def response = { name: 'Hyalen Moreira' }

  Scenario: pathMatches('/users/{index}') && methodIs('get')
    * def param = { index : '#(pathParams.index)' }
#    * def param = pathParams.index
    * def responseStatus = 200
#    * def response = { index: '#(pathParams.index)' }
    * def response = { index: '#(param.index)' }

  Scenario: pathMatches('/users') && methodIs('post')
    * def requestUser = {request : '#(request)'}
    * def responseStatus = 201
#    * def response = { id : '111' }
    * def response = { id : '#(requestUser.request.userId)' }

  Scenario:
    * def responseStatus = 404