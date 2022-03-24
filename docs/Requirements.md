# Requirements

## Use case model 

Create a use-case diagram in UML with all high-level use cases possibly addressed by your module, to clarify the context and boundaries of your application.

Give each use case a concise, results-oriented name. Use cases should reflect the tasks the user needs to be able to accomplish using the system. Include an action verb and a noun. 

Example:
 <p align="center" justify="center">
  <img src=""/>
</p>


Briefly describe each use case mentioning the following:

* **Actor**. Name only the actor that will be initiating this use case, i.e. a person or other entity external to the software system being specified who interacts with the system and performs use cases to accomplish tasks. 
* **Description**. Provide a brief description of the reason for and outcome of this use case, or a high-level description of the sequence of actions and the outcome of executing the use case. 
* **Preconditions and Postconditions**. Include any activities that must take place, or any conditions that must be true, before the use case can be started (preconditions). Describe also the state of the system at the conclusion of the use case execution (postconditions). 

* **Normal Flow**. Provide a detailed description of the user actions and system responses that will take place during execution of the use case under normal, expected conditions. This dialog sequence will ultimately lead to accomplishing the goal stated in the use case name and description. This is best done as a numbered list of actions performed by the actor, alternating with responses provided by the system. 
* **Alternative Flows and Exceptions**. Document other, legitimate usage scenarios that can take place within this use case, stating any differences in the sequence of steps that take place. In addition, describe any anticipated error conditions that could occur during execution of the use case, and define how the system is to respond to those conditions. 
* 


|||
| --- | --- |
| *Name* | Take online ticket |
| *Actor* | User | 
| *Description* |The user takes one online ticket to Academic Services, (**having the option to choose the area**). |
| *Preconditions* | - The user has the "Uni" app. <br>  - The Academic Services are working <br> - The User has not taken a ticket in the last half-hour or didn't fail to show up in his turn in the last 24 hours. <br> (**colocar mais/corrigir se necessário**) |
| *Postconditions* | - User was given a ticket. <br> - The User is guaranteed their turn <br> - The number in the next ticket is updated (**colocar mais/corrigr se necessário**) | 
| *Normal flow* | 1. The User enters the Uni app and opens the tickets tab. <br> 2. The User can choose between the different areas to take a ticket. <br> 3. The User takes one ticket <br> 4.The User receives a number. <br> 5.The user is notified when the current ticket number is 5 numbers before his. <br> 6. The user enters Academic Services in his turn. (**colocar mais/corrigr se necessário**)|
| *Alternative flows and exceptions* | 1. [Ticket Cancelation (?)] After receiving the ticket, the User is free to cancel it with a maximum of 3 cancelations/day <br> 2. [Missing turn] In case the User fails to show up, he's given a time sanction of 24 hours <br> 3.[] (**colocar mais/corrigr se necessário**)<br>|

|||
| --- | --- |
| *Name* | Choose Area (**poderá não ser necessário, deixar para o fim**)|
| *Actor* | User | 
| *Description* | |
| *Preconditions* |(**colocar mais/corrigir se necessário**) |
| *Postconditions* |  (**colocar mais/corrigr se necessário**) | 
| *Normal flow* |  (**colocar mais/corrigr se necessário**)|
| *Alternative flows and exceptions* ||

|||
| --- | --- |
| *Name* |Cancel the ticket|
| *Actor* | User | 
| *Description* | |
| *Preconditions* |(**colocar mais/corrigir se necessário**) |
| *Postconditions* |  (**colocar mais/corrigr se necessário**) | 
| *Normal flow* |  (**colocar mais/corrigr se necessário**)|
| *Alternative flows and exceptions* ||

|||
| --- | --- |
| *Name* ||
| *Actor* | | 
| *Description* | |
| *Preconditions* |(**colocar mais/corrigir se necessário**) |
| *Postconditions* |  (**colocar mais/corrigr se necessário**) | 
| *Normal flow* |  (**colocar mais/corrigr se necessário**)|
| *Alternative flows and exceptions* ||


## User stories
The user stories should be created as GitHub issues. Therefore, this section will *not* exist in your report, it is here only to explain how you should describe the requirements of the product as **user stories**. 

A user story is a description of desired functionality told from the perspective of the user or customer. A starting template for the description of a user story is 

*As a < user role >, I want < goal > so that < reason >.*

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
