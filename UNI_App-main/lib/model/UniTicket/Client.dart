class Client{

  String email;
  int ticketsCanceled;
  String currentService;
  bool blocked = false;
  int currentTicket;
  bool hasTicket = false;

  Client(){
    this.email = email;
  }

/*   void getClient(String email){
    if(email==null){
      return 
    }
  }
 */
  bool gethasTicket(){
    return hasTicket;
  }
  void setHastTicket(bool value){
   hasTicket = value; 
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