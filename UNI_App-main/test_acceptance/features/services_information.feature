Feature: Information about the services available
  Allows users to know information about the different types of services
  they can choose to take a ticket

  Scenario: The authenticated student wants to see information about the services available
    Given an authenticated student
    And he wants to know information about some academic service
    When I tap the academic services information page
    Then I expect the "information_services" to be  "meter texto da informação dos serviços"