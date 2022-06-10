
## **Logical View**


For our project, we decided that the MVC (Model-View-Controller) architecture pattern is the one that best suits our app . 

<p align="center" justify="center">
  <img src="https://github.com/LEIC-ES-2021-22/2LEIC11T5/blob/main/images/MVC_UniTicket.png"/>
</p>

Since there is a clear separation of what is observed: 
    
    View : Shows application data and allows user interaction. Accesses Model data, but does not understand the data or know how the data can be manipulated.

    Example: functionalities that the user can use on the mobile phone screen 
    
Where the necessary data for the functionalities are: 
    
    Model : The model contains the dynamic data and application logic, but does not control how the data is presented to the user.

    Example: ticket data system of the academic services, number of cancellations .
    
The need to coordinate , manipulate, and handles input from users interactions :
    
    Controller : The controller's main function is to mediate the interaction between the Model and the View. It takes user or View inputs into account and creates the correct outputs by interacting with the Model that responds as intended.
    
    Example: update the number of tickets taken, cancellation by a user 
    
### Electronic Ticket System 

 * This package will encompass the entire implementation of the Business Logic which will provide the custom rules or algorithms that handle the exchange of information between a database and user interface. 

 * These interfaces will be, for example, the applications on students' smartphones, the television with the dashboard that displays the status of the service and also the ticket dispenser machine in the academic services. It will allow staff to manage the ticket line too.

<p align="center" justify="center">
  <img src="https://github.com/LEIC-ES-2021-22/2LEIC11T5/blob/main/images/Logical Architecture.png"/>
</p>

**Ticketing Application UI**

* This package allows every authenticated user to interact with the application in order to take tickets, view the service rate, etc.

**Ticket Dispenser Machine GUI**

* This graphics user interface allows people choose their ticket at the Academic Services.

**Ticket Managing UI**

* Concedes access to staff so that they can manage and control the status of the queue.

**Ticketing Service Screen GUI**

* This GUI is displayed on the Academic Services TV screen and allows to show queue information.

**Ticketing Business Logic**

* The logic pertaining to the ticket functions since the applications on students smartphones to the ticketing GUI in the Academic Services.

**Ticketing Database Schema**

* This database will store data related to each day of attendance so that in the future we can study better resolutions of the problem.

## **Physical Architecture**

 <p align="center" justify="center">
  <img src="https://github.com/LEIC-ES-2021-22/2LEIC11T5/blob/development/images/Physical_architeture.png"/>
</p>

**User Client Machine**
 * Authenticated students smartphones that allows to interact with the app interface.

**Academic Services TV Screen**
 * Queue and service status presented on the Academic Services TV screen.

**Ticket Managment**
 * Interface in the staff computers that allows to skip the tickets.

**Ticketing Server Machine**
* Computer that runs the software capable of synchronously managing all the devices related to the tickets (previously mentioned).



## **Vertical Prototype**

To help on validating all the architectural, design and technological decisions made, we usually implement a vertical prototype, a thin vertical slice of the system.

We used flutter to develop the prototype.
In this way, we also got a better idea if this tool works for our application and if it makes sense to continue development with it.

The prototype implements a simplified version of what could turn out to be a page with the main rules for using the app. Rules that can be found in our Case Model.


<p align="center" justify="center">
  <img src="https://github.com/LEIC-ES-2021-22/2LEIC11T5/blob/main/images/vertical_prt.png"/>
</p>
