int ticketsCanceled = 0;
String currentService;
bool blocked = false;
int currentTicket;
bool hasTicket = false;
DateTime timeCancelled;

String getNextDay() {
  var aux = timeCancelled.add(const Duration(hours: 24));
  return DateTime(aux.year, aux.month, aux.day).toString().split(' ')[0];
}

bool gethasTicket() {
  return hasTicket;
}

void setHastTicket(bool value) {
  hasTicket = value;
}

bool getBlocked() {
  DateTime now = DateTime.now();
  if (blocked == true) {
    if (now.day != timeCancelled.day) {
      blocked = false;
    }
  }
  return blocked;
}

bool setBlocked(bool block) {
  return blocked = true;
}

void setTicketsCanceled() {
  ticketsCanceled++;
  if (ticketsCanceled == 3) {
    blocked = true;
    timeCancelled = DateTime.now();
  }
}

int getTicketsCanceled() {
  return ticketsCanceled;
}

String getCurrentService() {
  return currentService;
}

void setCurrentService(String service) {
  currentService = service;
}
