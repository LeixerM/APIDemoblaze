Feature: login

  Background:
    * url baseUrl
    * def userData = read('classpath:helpers/data.json')


    @loginSucessfully
  Scenario:login successfully
    Given path '/login'
    And request userData.login.successful
    When method post
    Then status 200


  @loginFailed
  Scenario:login password failed
    Given path '/login'
    And request userData.login.failed
    When method post
    Then status 200
    And match response == {"errorMessage": "Wrong password."}




