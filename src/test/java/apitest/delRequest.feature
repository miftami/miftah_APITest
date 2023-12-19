Feature: Delete request Swagger

  Background: Preparation
    Given url baseURL
    And print "Delete Data"

  @deleteData
  Scenario: Test Delete data in Swagger
    When path '/user/mift4h'
    And method delete
    Then status 200
    And print "===== Test Delete Data Sukses ======"
    And print response