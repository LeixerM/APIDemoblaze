Feature: SignUp for a new account in the api Demoblaze



  Background:
    * url baseUrl
    * def userData = read('classpath:helpers/data.json')

  @signupSuccessful
  Scenario: Create a new account successfully
    Given path '/signup'
    And request userData.signup.new
    When method post
    Then status 200
    And  match response contains '""'

    @signupExistingUser
    Scenario: Attempt to create existing user
      Given path '/signup'
        And request userData.signup.existent
        When method post
        Then status 200
        And match response == { "errorMessage": "This user already exist." }





