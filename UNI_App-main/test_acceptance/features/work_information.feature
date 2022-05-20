
  Feature: Academic service working hours
    Be able to see if Academic Services are working

    Scenario: The authenticated Student opens the application
      Given a student that is authenticated
      And he wants to take a ticket
      When I tap the "academic_services_page" button
      Then I exppect the "work_information"  to be "Horário de atendimento: 11h às 16h .\nEmissão de Senha: 10h30 às 15h30 ."