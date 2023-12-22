Feature: Test get request

  Background: Setup Data
    Given url baseURL
    And print "========= Ini test Get Data ========"
    # define location schema
    * string jsonSchemaExpected = read('file:src/test/java/apitest/schema/getschema.json')

    # Get list user and assert status
  
  @getData
  Scenario: User get user data using id
    # declare variable userid
    * def userid = 45 
    * def username = 'mift4h'

    # path
    When path '/user/'+username
    # http request method
    And method get
    # get status
    And status 404
    And print "Web Error"
    * call read('postRequest.feature')
    When path '/user/'+username
    And method get
    And status 200

    And print "===== Test Ambil Data Selesai ====="
    Then print response
    # And match response.data contains { "email": '#notnull'}
    # assert jsonschema validation
    And match response == '#object'
      * string jsonData = response
    # location file JSONSchemaUtil in folder plugins
      * def SchemaUtils = Java.type('plugins.JSONSchemaUtil')
      * assert SchemaUtils.isValid(jsonData, jsonSchemaExpected)
   