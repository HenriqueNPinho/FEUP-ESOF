class Client{

  String email;
  int ticketsCanceled;
  String currentService;
  bool blocked = false;
  int currentTicket;

  Client(String email){
    this.email = email;

  }

  bool getBcocked(){
    return blocked;
  }

  bool setBlocked() {
    return blocked = true;
  }

  

}