import 'package:uni/model/UniTicket/Client.dart';

class CheckClient{




  bool checkIsBlocked(Client client){

    if(!client.getBlocked() && client.ticketsCanceled <=3){
      return false;
    }
    else{

      client.setBlocked( true);
      return true;
    }
  }

}