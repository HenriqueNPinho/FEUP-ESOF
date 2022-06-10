

import 'package:flutter_test/flutter_test.dart';
import 'package:uni/model/UniTicket/Client.dart' as Client;


main() {
  test('Client is blocked ', () {

    Client.timeCancelled = DateTime(2022) as DateTime;
    Client.setBlocked(true);
    expect(Client.getBlocked(), false);
  });

  test('Client is blocked after canceled 3 times ', () {
    Client.setTicketsCanceled();
    Client.setTicketsCanceled();
    Client.setTicketsCanceled();

    expect(Client.getBlocked(), true);
  });



  test('Client next day information ', () {
    Client.setTicketsCanceled();

    expect(Client.ticketsCanceled, 4);
  });
}