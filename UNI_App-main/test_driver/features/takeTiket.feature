Feature: Confirm a ticket
    The app should let choose a ticket and ask to confirm
//onde está o Given ???
@tag
Scenario:  The ticket tab opens
    Given the student in ""
    When I tap the "AreaOption" button
    And I tap the "PedirSenhaButton" button
    And I tap the "ConfirmarSimButton" button
    Then I expect the button "CancelarButton" to be present