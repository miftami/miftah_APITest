Feature:Test Put Data

Background:
    Given url baseURL
    And print "==== API Automation Test With Karate ===="
    * def body = {"id": 45,"username": "mift4h","firstName": "miftakhul","lastName": "maarif","email": "maarif.miftah@gmail.com","password": "iniP@sword","phone": "0000000000","userStatus": 0}
    * def headerRegress = { Accept: 'application/json'}
    * def userid = "mift4h"

  @updateData
  Scenario: Swagger Test Post
    When path "/user/"+userid
    And headers headerRegress
    And request body
    And method Put
    Then status 200
    And print response
    And match response == { code:'#number', type : '#string',message:'#string' }
    And print "=== Data sukses diupdate ==="
    
