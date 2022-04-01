# Requirements

## Use case model 

 <p align="center" justify="center">
  <img src="https://github.com/LEIC-ES-2021-22/2LEIC11T5/blob/main/images/Use_Case_View.png"/>
</p>


|||
| --- | --- |
| *Name* | Take online ticket |
| *Actor* | Authenticated Student | 
| *Description* |The Authenticated Student takes one online ticket to the Academic Services |
| *Preconditions* | - The Authenticated Student has the "Uni" app <br> - The Authenticated Student is logged in to the "Uni" app <br> - The Academic Services are working <br> - The Authenticated Student has not taken a ticket in the last half-hour or hasn't failed to show up on his turn in the last 24 hours <br>  |
| *Postconditions* | - Authenticated Student was given a ticket <br> - The Authenticated Student is guaranteed their turn <br> - The number in the next ticket is updated  | 
| *Normal flow* | 1. The Authenticated Student enters the Uni app and opens the tickets tab <br> 2. The Authenticated Student can choose between the different areas to take a ticket <br> 3. The Authenticated Student takes one ticket <br> 4. The Authenticated Student receives the number <br> 5. The Authenticated Student is notified when the current ticket number is 5 numbers before his <br> 6. The Authenticated Student enters Academic Services in his turn |
| *Alternative flows and exceptions* | 1. [Ticket Cancelation] After receiving the ticket, the Authenticated Student is free to cancel it with a maximum of 3 cancelations/day <br> 2. [Missing turn] In case of the Authenticated Student failes to show up is given an time sanction of 12 hours <br>|

|||
| --- | --- |
| *Name* | Choose Area |
| *Actor* | Authenticated Student | 
| *Description* | The Student can choose between the diferent areas|
| *Preconditions* |- The Authenticated Student has the "Uni" app <br> - The Authenticated Student is logged in to the "Uni" app <br> - The Academic Services are working <br> - The Authenticated Student has not taken a ticket in the last half-hour or didn't fail to show up in his turn <br> |
| *Postconditions* |   - Authenticated Student has chosen an area | 
| *Normal flow* | 1. The Authenticated Student enters the Uni app and opens the tickets tab <br> 2. The Authenticated Student can choose between the different areas to take a ticket |
| *Alternative flows and exceptions* ||

|||
| --- | --- |
| *Name* | Cancel the ticket |
| *Actor* |Authenticated Student | 
| *Description* | The Student can cancel his appointment any time before |
| *Preconditions* | - The Student must have taken a ticket online in the Uni app  |
| *Postconditions* |  - The Student can't reach a maximum of 3 cancelations | 
| *Normal flow* | 1. The Student takes his ticket in the Uni app <br> 2. The Student can cancel his appointment  |
| *Alternative flows and exceptions* | 1. [Not canceling in time] The student knows that he won't/can't go and doesn't cancel his ticket in time, if the number of his turn shows up it is counted as not showing up and the 12 hours sanction will be applied |

|||
| --- | --- |
| *Name* | Take Paper Ticket |
| *Actor* | User/Guest | 
| *Description* | Both User and Visitor can take a paper ticket in the Academic Services of FEUP |
| *Preconditions* | - There are no flaws in the Academic Services system  |
| *Postconditions* | - The individual waits up to his turn  | 
| *Normal flow* |  1. The individual that takes the ticket gets a number related to his turn and he waits until his turn to show up |
| *Alternative flows and exceptions* | 1. [Missing turn] After 2 minutes waiting the secretary skips the person turn |


**<h2> User stories and Acceptance Tests</h2>**

**<h3>Must have</h3>** *(Requirements labelled as Must have are critical to the current delivery timebox in order for it to be a success.)*

<ol>
<li> 

### As an Authenticated Student, I want to choose one area from many displayed in the app so that I can be served according to my request.

<br>

> ### **Feature: Choose an area**  

  ### Scenario: The authenticated student chooses an area

  * Given a student that is authenticated

  * And he wants to take a ticket

  * Then he should be able to choose one from the areas displayed on the screen

</li>
<li>

### As an Authenticated Student, I want to take an online ticket so that I don't need physically go to the place. 

<br>

> ### **Feature: Take an online ticket**

  #### **Rule: The authenticated student can't have a previous ban**
  #### **Rule: The authenticated student can only take 1 ticket per 30 minutes**

  ### Scenario: The authenticated student successfully takes a ticket

  * Given a student that is authenticated

  * And he already chose the area

  * Then he can acknowledge the ticket confimation

  * And he can take the ticket

  ### Scenario: The authenticated student rejects the confirm option

  * Given a student that is authenticated

  * And he already chose the area

  * Then he can deny the ticket confirmation

</li>
<li>

###  As an Authenticated Student, I want to cancel the appointment that I booked so that the queue no longer needs to wait for someone that can't come to the appointment.

<br>

> ### **Feature: Cancel the ticket**

 #### **Rule: The authenticated student can only cancel 3 tickets per 24 hours**

  ### Scenario: The authenticated student cancels the ticket

  * Given an authenticated student who has a ticket

  * And he took it via online application

  * Then he can cancel the ticket anytime before its call

  ### Scenario: The authenticated student doesn't cancel the ticket

  * Given an authenticated student who has a ticket

  * And he took it via online application

  * Then he can miss the appointment

  * But he can no longer take another ticket in 12 hours

  ### Scenario: The authenticated student cancels 3 tickets within a day

  * Given an authenticated student canceled 2 tickets in that day

  * And he takes another one and cancels it

  * Then he gets a 12 hour ban

</li>

<li>

###  As an Authenticated Student, I want to get served as soon as my ticket number shows on the screen.

> ### **Feature: Getting served**
  #### **Rule: The student can't cancel his ticket**

  ### Scenario: The student goes to the Academic Services and gets served
  * Given a student with his ticket
  
  * And the screen shows his ticket number

  * Then he can satisfy his request at the Academic Services

  ### Scenario: The student doesn't go to the appointement
  * Given a student with his ticket
  
  * And he doesn't show up in his turn

  * Then he gets a 12 hour ban in the application

</li>
</ol>

**<h3>Should have</h3>** *(Requirements labelled as Should have are important but not necessary for delivery in the current delivery timebox.)*
<ol>
<li> 

###  As a Student, I want to login so that I can use the app.

<br>

> ### **Feature: Login into the application**
  ### Scenario: The student logs into the application
  * Given a student registered in the application
  
  * And he writes his credentials right in the form

  * Then he can successfully login

</li>
<li> 

### As an Authenticated Student, I want to logout so that I can leave the app in a safe way.

<br>

> ### **Feature: Log out of the application**
  ### Scenario: The student logs out of the application
  * Given a student logged into the application

  * Then he can log out of the application
</li>
<li> 

### As an Authenticated Student, I want to receive a notification so that it can warn me before my turn in order to get to the place in time.

<br>

> ### **Feature: Receive Notifications**
  ### Scenario: The authenticated student already took the ticket 

  * Given an authenticated student waiting to be served by the Academic Services

  * Then he receives an notification in his phone

  * And he can get going to the Academic Services

</li>
<li> 

### As an Authenticated Student, I want to get a visual feedback of the service speed so that I can decide if I want to wait for my turn.
</li>

<br>

> ### **Feature: Feedback of the service**
  ### Scenario: The authenticated student can check the service rate 

  * Given an authenticated student thinking about taking a ticket 
  
  * Then he can check the service rate in the Academic Services

  * And decide if he wants to take a ticket or not

  ### Scenario: The authenticated with a ticket can check the service rate 

  * Given an authenticated student waiting to be served by the Academic Services
  
  * Then he can check the service rate in the Academic Services

  * And decide if we wants to wait for his turn or not
  
</ol>

**<h3>Could have </h3>**  *(Requirements labelled as Could have are desirable but not necessary and could improve the user experience or customer satisfaction for a little development cost.)*
<ol>
<li>

### As an Authenticated Student I want to have some help/guidance through the application so that I can easily take a ticket.

</li>
</ol>
<hr>

User stories should be created and described as [Issues](https://github.com/LEIC-ES-2021-22/templates/issues) in GitHub with the label "user story". See how to in the video [Creating a Product Backlog of User Stories for Agile Development using GitHub](https://www.youtube.com/watch?v=m8ZxTHSKSKE).

You should name the issue with the text of the user story, and, in the "comments" field, add any relevant notes, the image(s) of the user interface mockup(s) (see below) and the acceptance test scenarios (see below). 

**INVEST in good user stories**. 
You may add more details after, but the shorter and complete, the better. In order to decide if the user story is good, please follow the [INVEST guidelines](https://xp123.com/articles/invest-in-good-stories-and-smart-tasks/).

**User interface mockups**.
After the user story text, you should add a draft of the corresponding user interfaces, a simple mockup or draft, if applicable.

**Acceptance tests**.
For each user story you should write also the acceptance tests (textually in [Gherkin](https://cucumber.io/docs/gherkin/reference/)), i.e., a description of scenarios (situations) that will help to confirm that the system satisfies the requirements addressed by the user story.

**Value and effort**.
At the end, it is good to add a rough indication of the value of the user story to the customers (e.g. [MoSCoW](https://en.wikipedia.org/wiki/MoSCoW_method) method) and the team should add an estimation of the effort to implement it, for example, using t-shirt sizes (XS, S, M, L, XL).

## Domain model

To better understand the context of the software system, it is very useful to have a simple UML class diagram with all the key concepts (names, attributes) and relationships involved of the problem domain addressed by your module. 
Also provide a short textual description of each class. 

Example:
 <p align="center" justify="center">
  <img src="https://github.com/LEIC-ES-2021-22/2LEIC11T5/blob/main/images/Domain_Model.png"/>
</p>
