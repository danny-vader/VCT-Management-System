# Data and Applications Project

Team-13

- Bhvya Kothari - 2021101041
- Gaurav Bansal - 2021101022
- Ayush Yadav - 2021115003

## Valorant Champions Tour

Database for all the details of VCT held in 2019, including fixtures, results, players, their statistics, etc.

## Functionalities that our code can provide:

**1.Get Player Info:** Displays player information of a single player given as input

**2. Match Summary:** Can display the match summary of a complete match based on the unique match id

**3. Participant Performance:** Prints the performance statistics of a participant throughout the tournament

**4. Agent Data:** Retrieves the complete agent data including the different type of abilities

**5. Map Data:** Displays complete data and statistics related to a single map in the game

**6. Participant Data:** Takes the team number as input and outputs the data of all the members of the team

**7. Participant Rank:** Displays the sorted order of the participant performance of a participant across the tournament, based on any parameter given as input to the function

**8. Participant Performance:** Displays the cumulative batting average of all the batsmen of a squad in our database. Error message shown if the Squad entered is incorrect.

**9. Teams Participating:** This function returns the total number of teams, along with their names that are taking part in the tournament

**10. Weapon PickRate:** This functionality returns the weapon pickrate of the participants, ie, how many participants have a particular type of weapon choice that they use the most

**11. Insert a New Map:** Used to insert a new map into the database

**12. Add a new Agent:** Used to insert a new agent into the database

**13. Delete a Map:** Delete an existing map in the database

**14. Delete a Participants Data:** For any participant withdrawing out, his/her/their data must be removed from the database, alongwith all the references made from or to it

**15. Insert a New Team:** Inserting a new team into the database. Also, inserting the members that will participate for this team, taking in complete details for registration

## How to Execute:

- Start the mysql server and create database with whatever name you want.
- type in command “use database_name;”
- use the command to copy the sql dump file named data.sql into the database created : “source file_path”
- Execute the python program.