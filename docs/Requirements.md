# Requirements

## Use case model 

 <p align="center" justify="center">
  <img src="https://github.com/LEIC-ES-2021-22/2LEIC11T5/blob/main/images/Use_Case_View.png"/>
</p>


|||
| --- | --- |
| *Name* | Take online ticket |
| *Actor* | Authenticated Student | 
| *Description* |The Authenticated Student takes one online ticket to Academic Services, . |
| *Preconditions* | - The Authenticated Student has the "Uni" app. <br> The Authenticated Student is logged in to the "Uni" app. <br> - The Academic Services are working <br> -The Authenticated Student has not tacken a ticket in the last half-hour or didn't failed to show up in his turn in the last 24 hours. <br> |
| *Postconditions* | - Authenticated Student was given a ticket. <br> - The Authenticated Student is guaranteed their turn <br> -The number in the next ticket is updated  | 
| *Normal flow* | 1. The Authenticated Student enters the Uni app and opens the tickets tab. <br> 2. The Authenticated Student can choose between the different areas to take a ticket. <br> 3. The Authenticated Student takes one ticket <br> 4.The Authenticated Student receives the number. <br> 5. The Authenticated Student is notified when the current ticket number is 5 numbers before his. <br> 6. The Authenticated Student enters Academic Services in his turn. |
| *Alternative flows and exceptions* | 1. [Ticket Cancelation] After receiving the ticket, the Authenticated Student is free to cancel it with a maximum of 3 cancelations/day <br> 2.[Missing turn] In case of the Authenticated Student failes to show up is given an time sanction of 12 hours.<br>|

|||
| --- | --- |
| *Name* | Choose Area |
| *Actor* | Authenticated Student | 
| *Description* | The Student can choose between the diferent areas|
| *Preconditions* |- The Authenticated Student has the "Uni" app. <br> The Authenticated Student is logged in to the "Uni" app. <br> - The Academic Services are working <br> -The Authenticated Student has not tacken a ticket in the last half-hour or didn't failed to show up in his turn . <br> |
| *Postconditions* |  - Authenticated Student has choosen an area | 
| *Normal flow* | 1. The Authenticated Student enters the Uni app and opens the tickets tab. <br> 2. The Authenticated Student can choose between the different areas to take a ticket.|
| *Alternative flows and exceptions* ||

|||
| --- | --- |
| *Name* | Cancel the ticket |
| *Actor* |Authenticated Student | 
| *Description* | The Student can cancel his appointment any time before |
| *Preconditions* | -The Student must have taken a ticket online in the Uni app. |
| *Postconditions* |  -The Student can´t reach a maximum of 3 cancelations.| 
| *Normal flow* | 1. The Student takes his ticket in the Uni app. <br> 2. The Student can cancel his appointment.  |
| *Alternative flows and exceptions* | 1.[Not canceling in time] The student knows that he won´t/can´t go and doesn´t cancel his ticket in time, if the number of his turn shows up it is counted as not showing up and the 12 hours saction will be applied. |

|||
| --- | --- |
| *Name* | Take Paper Ticket |
| *Actor* | User/Guest | 
| *Description* | Both User and Visitor can take an paper ticket in the Academic Services of FEUP |
| *Preconditions* | -There are no flaws in the Academic Services system  |
| *Postconditions* | -The individual waits up to his turn.  | 
| *Normal flow* |  1. The individual that takes the ticket gets a number related to his turn and he waits until his turn to show up.|
| *Alternative flows and exceptions* | [Missing turn] After 2 minutes waiting the secretary skips the person turn. |


## User stories
The user stories should be created as GitHub issues. Therefore, this section will *not* exist in your report, it is here only to explain how you should describe the requirements of the product as **user stories**. 

A user story is a description of desired functionality told from the perspective of the user or customer. A starting template for the description of a user story is 

*As a < user role >, I want < goal > so that < reason >.*

As a authenticated user, I want to choose one area from many displayed in the app so that I am attended at the academic services in the right place.

As a authenticated user, I want to take a online ticket so that I don't need to use a physical ticket or move around for that purpose.

As a authenticated user, I want to cancel the appointment that I booked so that I don't use tickets unnecessarily . 

As a authenticated user, I want to validate my presence that I booked (**talvez isto tenha de ser mudado!**).

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
