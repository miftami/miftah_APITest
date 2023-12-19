Feature: Test Logout

Background: Setup Data
    Given url baseURL

@logout
Scenario: User Success Loged Out

    When path '/user/logout'
    # http request method
    And method get
    # get status
    And status 200
    
    Then print response
    And print "=== ANDA SUDAH LOGOUT ==="
    And match response == { code:'#number', type : '#string',message:'#string' }


