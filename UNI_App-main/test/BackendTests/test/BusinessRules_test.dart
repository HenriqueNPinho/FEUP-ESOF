
import 'package:flutter_test/flutter_test.dart';
import 'package:uni/controller/uni_ticket/checkRules.dart';
import 'package:uni/model/UniTicket/Client.dart';



void main(){

  test('Client should be blocked',(){
      final client = Client('up20192829@upt.pt');
      client.setBlocked(true);

      expect(client.getBlocked(), true);
  });

  test('Client should not be blocked',(){
    final client = Client('up20192829@upt.pt');

    client.setTicketsCanceled(2);

    expect(CheckClient().checkIsBlocked(client), false);

  });

  test('Client should have the current Academic Service A ',(){
    final client = Client('up20192829@upt.pt');

    client.setCurrentService('A');

    expect(client.getCurrentService(), 'A');

  });

}