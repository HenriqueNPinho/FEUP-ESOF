
import 'dart:ffi';

import 'package:uni/model/UniTicket/TicketClient.dart';

class AcademicServices {

  List<int> infoA = [0,0,0];
  List<int> infoB = [0,0,0];
  List<int> infoC = [0,0,0];
  List<int> aCanceled = [];
  List<int> bCanceled = [];
  List<int> cCanceled = [];

  List<int> getA(){

    return infoA;
  }

  List<int> getB(){

    return infoB;
  }

  List<int> getC(){

    return infoC;
  }

  void setA(int totalClients, int clientsAttended){
    this.infoA.insert(0, totalClients);
    this.infoA.insert(1, clientsAttended);
    this.infoA.insert(2, totalClients - clientsAttended);


  }



  void setB(int totalClients, int clientsAttended){
    this.infoB.insert(0, totalClients);
    this.infoB.insert(1, clientsAttended);
    this.infoB.insert(2, totalClients - clientsAttended);


  }

  void setC(int totalClients, int clientsAttended){
    this.infoC.insert(0, totalClients);
    this.infoC.insert(1, clientsAttended);
    this.infoC.insert(2, totalClients - clientsAttended); // atualiza o número de clientes à espera


  }





  void incrService(String service){
    if(service.compareTo('A') == 0){


      this.setA(this.getA().elementAt(0) + 1, this.getA().elementAt(1));

    }else if(service.compareTo('B') == 0){
      this.setB(this.getB().elementAt(0) + 1, this.getB().elementAt(1));
    }
    else{
      this.setA(this.getC().elementAt(0) + 1, this.getC().elementAt(1));
    }

  }

  void incrClientsServed(String service){
    if(service.compareTo('A') == 0){


      this.setA(this.getA().elementAt(0) , this.getA().elementAt(1) + 1);

    }else if(service.compareTo('B') == 0){
      this.setB(this.getB().elementAt(0) , this.getB().elementAt(1) + 1);
    }
    else{
      this.setA(this.getC().elementAt(0) , this.getC().elementAt(1) + 1);
    }

  }
  
  void cancelService(int ticketNumber, String service, String emailClient){
    if(service.compareTo('A') == 0){
      this.aCanceled.add(ticketNumber);




    }else if(service.compareTo('B') == 0){
      this.bCanceled.add(ticketNumber);
    }
    else{
      this.cCanceled.add(ticketNumber);
    }

  }



}



