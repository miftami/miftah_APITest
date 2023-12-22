Feature: Delete request Swagger

  Background: Preparation
    Given url baseURL
    And print "Delete Data"

  @deleteDataError
  Scenario: Test Delete Error
    When path '/user/3'
    And method delete
    Then status 404
    And print "===== Delete Error ======"
    And print response
