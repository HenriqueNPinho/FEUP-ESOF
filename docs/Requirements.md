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


## Domain model

 <p align="center" justify="center">
  <img src="https://github.com/LEIC-ES-2021-22/2LEIC11T5/blob/main/images/Domain_Model.png"/>
</p>
