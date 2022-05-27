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

  void setTicketsCanceled(int numbTickets){
    this.ticketsCanceled = numbTickets;
  }

  int getTicketsCanceled()
  {
    return this.ticketsCanceled;
  }

  String getCurrentService(){

    return this.currentService;
  }

  void setCurrentService(String service){
    this.currentService = service;

  }

}