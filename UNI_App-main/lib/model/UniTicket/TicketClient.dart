class Client{

  String email;
  int ticketsCanceled;
  String currentService;
  bool blocked = false;
  int currentTicket;

  Client(String email){
    this.email = email;

  }

  bool getBlocked(){
    return blocked;
  }

  bool setBlocked(bool block) {
    return blocked = true;
  }



}