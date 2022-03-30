# Requirements

## Use case model 

 <p align="center" justify="center">
  <img src=""/>
</p>


|||
| --- | --- |
| *Name* | Take online ticket |
| *Actor* | Authenticated Student | 
| *Description* |The Authenticated Student takes one online ticket to Academic Services, (**having the option to choose the area**). |
| *Preconditions* | - The Authenticated Student has the "Uni" app. <br> The Authenticated Student is logged in to the "Uni" app. <br> - The Academic Services are working <br> -The Authenticated Student has not tacken a ticket in the last half-hour or didn't failed to show up in his turn in the last 24 hours. <br> (**colocar mais/corrigir se necessário**) |
| *Postconditions* | - Authenticated Student was given a ticket. <br> - The Authenticated Student is guaranteed their turn <br> -The number in the next ticket is updated (**colocar mais/corrigr se necessário**) | 
| *Normal flow* | 1. The Authenticated Student enters the Uni app and opens the tickets tab. <br> 2. The Authenticated Student can choose between the different areas to take a ticket. <br> 3. The Authenticated Student takes one ticket <br> 4.The Authenticated Student receives the number. <br> 5. The Authenticated Student is notified when the current ticket number is 5 numbers before his. <br> 6. The Authenticated Student enters Academic Services in his turn. (**colocar mais/corrigr se necessário**)|
| *Alternative flows and exceptions* | 1. [Ticket Cancelation] After receiving the ticket, the Authenticated Student is free to cancel it with a maximum of 3 cancelations/day <br> 2.[Missing turn] In case of the Authenticated Student failes to show up is given an time sanction of 12 hours. (**colocar mais/corrigr se necessário**)<br>|

|||
| --- | --- |
| *Name* | Choose Area (**poderá não ser necessário, deixar para o fim**|
| *Actor* | Authenticated Student | 
| *Description* | The Student can choose between the diferent areas|
| *Preconditions* |- The Authenticated Student has the "Uni" app. <br> The Authenticated Student is logged in to the "Uni" app. <br> - The Academic Services are working <br> -The Authenticated Student has not tacken a ticket in the last half-hour or didn't failed to show up in his turn . <br> (**colocar mais/corrigir se necessário**)|
| *Postconditions* |  (**colocar mais/corrigr se necessário**) | 
| *Normal flow* | 1. The Authenticated Student enters the Uni app and opens the tickets tab. <br> 2. The Authenticated Student can choose between the different areas to take a ticket. (**colocar mais/corrigr se necessário**)|
| *Alternative flows and exceptions* ||

|||
| --- | --- |
| *Name* | Cancel the ticket |
| *Actor* |Authenticated Student | 
| *Description* | The Student can cancel his appointment any time before |
| *Preconditions* | -The Student must have taken a ticket online in the Uni app. (**colocar mais/corrigir se necessário**) |
| *Postconditions* |  -The Student can´t reach a maximum of 3 cancelations.(**colocar mais/corrigr se necessário**) | 
| *Normal flow* | 1. The Student takes his ticket in the Uni app. <br> 2. The Student can cancel his appointment.  (**colocar mais/corrigr se necessário**)|
| *Alternative flows and exceptions* | 1.[Not canceling in time] The student knows that he won´t/can´t go and doesn´t cancel his ticket in time, if the number of his turn shows up it is counted as not showing up and the 12 hours saction will be applied. |

|||
| --- | --- |
| *Name* | Take Paper Ticket |
| *Actor* | User/Guest | 
| *Description* | Both User and Visitor can take an paper ticket in the Academic Services of FEUP |
| *Preconditions* | -There are no flaws in the Academic Services system (**colocar mais/corrigir se necessário**) |
| *Postconditions* | -The individual waits up to his turn. (**colocar mais/corrigr se necessário**) | 
| *Normal flow* |  1. The individual that takes the ticket gets a number related to his turn and he waits until his turn to show up. (**colocar mais/corrigr se necessário**)|
| *Alternative flows and exceptions* | [Missing turn] After 2 minutes waiting the secretary skips the person turn. |


## User stories

**<h3>Must have</h3>**(Requirements labelled as Must have are critical to the current delivery timebox in order for it to be a success.) 

As a Authenticated Student, I want to choose one area from many displayed in the app so that I can be served according to my request.

As a Authenticated Student, I want to successfully take a online ticket so that I don´t need to go physically to the place. 

As a Authenticated Student, I want to cancel the appointment that I booked so that the queue no longer needs to wait for someone that can´t come to the appointment.

<br>

**<h3>Should have</h3>**(Requirements labelled as Should have are important but not necessary for delivery in the current delivery timebox.)

As a Student, I want to login so that I can use the app.

As a Authenticated Student, I want to logout so that I can leave the app in a safe way.

As a Authenticated Student, I want to recive a notification so that it can warn me before my turn in order to get to the place in time.

As a Authenticated Student, I want to get a visual feedback of the service speed so that I can decide if I can wait for my turn.

<hr>

**<h3>Could have </h3>**  (Requirements labelled as Could have are desirable but not necessary and could improve the user experience or customer satisfaction for a little development cost.)

As a Authenticated Student I want to have some help/guidance through the application so that I can easily take a ticket.

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
  <img src=""/>
</p>
