Feature: Test Login

Background: Setup Data
    Given url baseURL

@login
Scenario: User Success Loged In
    * def user = "mift4h"
    * def pass = "iniP@sword"

    When path '/user/login'
    # http request method
    And method get
    And params {username : user, password : pass}
    # get status
    And status 200
    
    Then print response
    And print "=== LOGIN SUKSES ==="
    And match response == { code:'#number', type : '#string',message:'#string' }


