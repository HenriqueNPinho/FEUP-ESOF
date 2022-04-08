# Architecture and Design 

The architecture of a software system encompasses the set of key decisions about its overall organization.

A well written architecture document is brief but reduces the amount of time it takes new programmers to a project to understand the code to feel able to make modifications and enhancements.

To document the architecture requires describing the decomposition of the system in their parts (high-level components) and the key behaviors and collaborations between them.

In this section you should start by briefly describing the overall components of the project and their interrelations. You should also describe how you solved typical problems you may have encountered, pointing to well-known architectural and design patterns, if applicable.

## Logical architecture

The purpose of this subsection is to document the high-level logical structure of the code (Logical View), using a UML diagram with logical packages, without the worry of allocating to components, processes or machines.

It can be beneficial to present the system both in a horizontal or vertical decomposition:

horizontal decomposition may define layers and implementation concepts, such as the user interface, business logic and concepts;
vertical decomposition can define a hierarchy of subsystems that cover all layers of implementation.

## Rascunho 
For our project, we decided that the MVC (Model-View-Controller) architecture pattern is the one that best suits our app . 

Since there is a clear separation of what is observed: 
    
    View : Shows application data and allows user interaction. Accesses Model data, but does not understand the data or know how the data can be manipulated.

        Example: functionalities that the user can use on the mobile phone screen 
    
Where the necessary data for the functionalities are: 
    Model : The model contains the dynamic data and application logic, but does not control how the data is presented to the user.

         Example: ticket data system of the academic services, number of cancellations .
    
The need to coordinate , manipulate, and handles input from users interactions :
    
    Controller : The controller's main function is to mediate the interaction between the model and the view. It takes user or view inputs into account and creates the correct outputs by interacting with the Model that responds as intended.
    
        Example: update the number of tickets taken, cancellation by a user 



Below we have a clear and abstract representation of how the MVC pattern works in our app:

<p align="center" justify="center">
  <img src="https://github.com/LEIC-ES-2021-22/2LEIC11T5/blob/main/images/MVC_UniTicket.png"/>
</p>



## Physical architecture

The goal of this subsection is to document the high-level physical structure of the software system (machines, connections, software components installed, and their dependencies) using UML deployment diagrams (Deployment View) or component diagrams (Implementation View), separate or integrated, showing the physical structure of the system.

It should describe also the technologies considered and justify the selections made. Examples of technologies relevant for uni4all are, for example, frameworks for mobile applications (such as Flutter).

Example of UML deployment diagram showing a deployment view of the Eletronic Ticketing System (please notice that, instead of software components, one should represent their physical/executable manifestations for deployment, called artifacts in UML; the diagram should be accompanied by a short description of each node and artifact):




## Vertical prototype

To help on validating all the architectural, design and technological decisions made, we usually implement a vertical prototype, a thin vertical slice of the system.

In this subsection please describe which feature you have implemented, and how, together with a snapshot of the user interface, if applicable.

At this phase, instead of a complete user story, you can simply implement a feature that demonstrates thay you can use the technology, for example, show a screen with the app credits (name and authors).
