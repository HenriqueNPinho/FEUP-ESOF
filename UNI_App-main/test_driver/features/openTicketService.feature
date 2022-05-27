Feature: Open ticket service tab
  The app should let open the ticket service tab

  @tag
  Scenario: The ticket service
    When I tap the "OpenNavigator" button
    And I tap the "Senhas secretaria" text
    Then I expect the button "CancelarButton" to be present