Feature: Test Login

Background: Setup Data
    Given url baseURL

@loginError
Scenario: User Error Loged In
    * def user = "909"
    * def pass = "iniP@kgg6"

    When path '/user/login'
    # http request method
    And method POST
    And params {username : user, password : pass}
    And status 405
    
    Then print response
    And print "=== LOGIN GAGAL ==="
    And print response.code

