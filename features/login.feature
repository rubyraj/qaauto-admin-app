Feature: test login

  Scenario: test login
    Given I can launch admin app
    When I enter admin credentials
    And I click login button
    Then I see login is successful
