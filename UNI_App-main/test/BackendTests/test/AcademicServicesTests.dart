
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:uni/model/UniTicket/AcademicServices.dart';
import 'package:uni/model/UniTicket/Client.dart' as Client;





void main() {

  test('We should have the academicServices information about tickets from server with nothing: ',() async {
    AcademicServices academicServices = AcademicServices();


    expect( academicServices.getSecA() == "", true);
    expect( academicServices.getSecB() == "", true);
    expect( academicServices.getSecC() == "", true);
    expect( academicServices.getWaitA() == "", true);
    expect( academicServices.getWaitB() == "", true);
    expect( academicServices.getWaitC() == "", true);
  });

  test('We should have the academicServices information about tickets and waiting from server',() async {
    AcademicServices academicServices = AcademicServices();

    academicServices.servAInfo ="20";
    academicServices.servBInfo ="20";
    academicServices.servCInfo ="20";
    academicServices.waitA = " 3";
    academicServices.waitB ="4";
    academicServices.waitC ="5";

    expect( academicServices.getSecA() == "", false);
    expect( academicServices.getSecB() == "", false);
    expect( academicServices.getSecC() == "", false);
    expect( academicServices.getWaitA() == "", false);
    expect( academicServices.getWaitB() == "", false);
    expect( academicServices.getWaitC() == "", false);


  });

  test('Client is blocked ',(){
    Client.setBlocked(false);
    expect(Client.getBlocked() , false);


  });

  test('Client is blocked after canceled 3 times ',(){
    Client.setTicketsCanceled();
    Client.setTicketsCanceled();
    Client.setTicketsCanceled();

    expect(Client.getBlocked() , true);





  });

  test('Client is blocked after canceled 3 times ',(){
    Client.setTicketsCanceled();
    Client.setTicketsCanceled();
    Client.setTicketsCanceled();

    expect(Client.getBlocked() , true);





  });


  test('Client next day information ',(){
    Client.setTicketsCanceled();

    expect( Client.ticketsCanceled, 1);





  });

}