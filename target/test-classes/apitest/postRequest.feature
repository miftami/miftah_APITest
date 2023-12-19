Feature: Post test

  Background:
    Given url baseURL
    And print "==== API Automation Test With Karate ===="
    * def body = [{"id": 45,"username": "mift4h","firstName": "miftakhul","lastName": "maarif","email": "maarif.miftah@gmail.com","password": "iniP@sword","phone": "098765456789","userStatus": 0}]
    * def headerRegress = { Accept: 'application/json'}

  @createData
  Scenario: Swagger Test Post
    When path "/user/createWithArray"
    And headers headerRegress
    And request body
    And method post
    Then status 200
    And print response
    And match response == { code:'#number', type : '#string',message:'#string' }
    And print "=== Data sukses dikirim ==="
    
