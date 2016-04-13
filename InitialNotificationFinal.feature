Feature: Initial Notification 
As an agile coach
I want Inspect to send notifications to team members who are scheduled to complete inspect reports
So that the team know to complete an inspect report and complete it in a timely manner

Background: 
Given the following schedules exist
| ID  | Schedule start date | Schedule time | Schedule Client | Schedule team | Frequency            | Additional user    |
| S1  | 1-April-2016        | 3PM           | Whitbread       | IG            | 15 days              | andi@andigital.com |
| S1A | 1-April-2016        | 3PM           | Whitbread       | IG            | 15 days              |                    |
| S2  | 2-April-2016        | 3PM           | Whitbread       | IG            | 1st day of the month | andi@andigital.com |
| S2A | 2-April-2016        | 3PM           | Whitbread       | IG            | 1st day of the month |                    |

And user A1 completed the survey from the IG team earlier than 1-April-2016



@notification


Scenario: Sending first notification to the team
Given a schedule S1 has been created 
When today is 1-April-2016
And current time is 3PM
Then a notification should be sent to A1


Scenario: Sending initial notification on reveiw due date to team members
Given a schedule S1 has been created 
When the first notification has been sent on 1-April-2016 
And today is 16-April-2016
And current time is 3PM
Then a notification should be sent to A1

Scenario: Sending initial notification on reveiw due date to team members
Given a schedule S1 has been created 
When the first notification has not been sent on 1-April-2016 
And today is 16-April-2016
And current time is 3PM
Then a notification should be sent to A1

Scenario: Sending first notification to the team
Given a schedule S1A has been created 
When today is 1-April-2016
And current time is 3PM
Then a notification should be sent to A1 and andi@andigital.com


Scenario: Sending initial notification on reveiw due date to team members
Given a schedule S2 has been created 
When the first notification has been sent on 1-April-2016 
And today is 16-April-2016
And current time is 3PM
Then a notification should be sent to A1 and andi@andigital.com

Scenario: Sending initial notification on reveiw due date to team members
Given a schedule S1 has been created 
When the first notification has not been sent on 1-April-2016 
And today is 16-April-2016
And current time is 3PM
Then a notification should be sent to A1 and andi@andigital.com



Scenario: Sending initial notification on reveiw due date to team members
Given a schedule S2 has been created 
When the first notification has been sent on 2-April-2016 
And today is 1-May-2016
And current time is 3PM
Then a notification should be sent to A1

Scenario: Sending initial notification on reveiw due date to team members
Given a schedule S2 has been created 
When the first notification has not been sent on 2-April-2016 
And today is 1-May-2016
And current time is 3PM
Then a notification should be sent to A1


Scenario: Sending initial notification on reveiw due date to team members
Given a schedule S2 has been created 
When the first notification has been sent on 2-April-2016 
And today is 1-May-2016
And current time is 3PM
Then a notification should be sent to A1 and andi@andigital.com

Scenario: Sending initial notification on reveiw due date to team members
Given a schedule S2 has been created 
When the first notification has not been sent on 2-April-2016 
And today is 1-May-2016
And current time is 3PM
Then a notification should be sent to A1 and andi@andigital.com


