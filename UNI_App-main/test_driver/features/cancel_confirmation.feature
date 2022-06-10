
Feature: Cancel ticket confirmation


Scenario: The student wants to cancel a ticket
  Given he is in the "AreaOption" menu
  When he presses the "CancelarButton" button
  Then he receives a "Confirmation" request