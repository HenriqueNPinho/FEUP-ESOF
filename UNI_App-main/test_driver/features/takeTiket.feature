Feature: Confirm a ticket
    The app should let choose a ticket and ask to confirm

@tag
Scenario:  The ticket tab opens e o crlh
    When I tap the "AreaOption" button
    And I tap the "PedirSenhaButton" button
    And I tap the "ConfirmarSimButton" button
    Then I expect the button "CancelarButton" to be present