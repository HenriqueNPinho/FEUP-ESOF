class Client{

  int ticketsCanceled =0;
  String currentService;
  bool blocked = false;
  int currentTicket;
  bool hasTicket = false;
  DateTime timeCancelled;

  Client(){

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
    DateTime now = DateTime.now();
    if(now.day != this.timeCancelled.day) {
      this.blocked = false;

    }
    return this.blocked;

  }

  bool setBlocked(bool block) {
    return blocked = true;
  }

  void setTicketsCanceled(){

    this.ticketsCanceled++;
    if(this.ticketsCanceled == 3){
      this.blocked = true;
      this.timeCancelled =  DateTime.now();

    }

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