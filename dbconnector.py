import pymysql
import pymysql.cursors
import os
import string
from prettytable import PrettyTable

def interface():
    os.system('clear')
    print("Welcome to MatchTracker.gg 😁")
    print("Select from the given options: ")
    print("Retrieval Functions:-")
    print("1. Get Player Info.")
    print("2. Match Summary")
    print("3. Participant Performance")
    print("4. Agent Data")
    print("5. Map Data")
    print("6. Participant Data")
    print("7. Participant Rank")
    print("8. Participant Performance")
    print("9. Teams Participating")
    print("10. Weapon PickRate")

    print("\nInsert Functions:-\n")
    
    print("11. Insert a new Map")
    print("12. Add a new Agent")
    print("13. Delete a Map")
    print("14. Delete a Participants Data")
    print("15. Insert a new Team")
    print("16. Exit")

# Retrieval Functions:-

def printTable(PT):
    try:
        row = {}
        mydb.commit()
        desc = mycursor.description
        fields = []
        
        for rows in desc:
            fields.append(rows[0])
        
        newtable = PrettyTable(fields)
        for rows in PT:
            row = []
            for i in rows.values():
                row.append(i)
            newtable.add_row(row)
        print(newtable)                    
        
    except Exception as e:
        mydb.rollback()

#1
def getPlayerInfo():
    try:
        Participant_Id = input("Enter Players Participant ID: ")
        query = "select * from participant_3 natural join `competitive careeer summary` where `participant id` = " + Participant_Id + ";"
        mycursor.execute(query)
        output = mycursor.fetchall()
        printTable(output)
    except Exception as e:
        print(e)
#2    
def Summary():
    try:
        Match_ID = input("Enter Match ID: ")
        query = "select * from `match summary` where `match id` = " + Match_ID + ";"
        mycursor.execute(query)
        output = mycursor.fetchall()
        printTable(output)
    except Exception as e:
        print(e)
#3
def ParticipantPerformance():
    try:
        Participant_ID = input("Enter Participant ID: ")
        mycursor.execute("select * from `tournament performance` where `participant id` = " + Participant_ID + ";")
        output = mycursor.fetchall()
        printTable(output)
    except Exception as e:
        print(e)
    
#4
def AgentData():
    try:
        AgentName = input("Enter Agent Name: ")
        query = "select a.name, a.type, a.gender, b.ability as \"basic ability\", p.ability as \"passive ability\", s.ability as \" signature ability\" "
        query = query + "from agent as a, `basic abilities` as b, `passive abilities` as p, `signature abilities` as s where a.name = \""
        query = query + AgentName + "\" and"
        query = query + " b.`agent name` = \""
        query = query + AgentName + "\" and"
        query = query + " p.`agent name` = \""
        query = query + AgentName + "\" and"
        query = query + " s.`agent name` = \""
        query = query + AgentName + "\";"
        print(query)
        mycursor.execute(query)    
        output = mycursor.fetchall()
        printTable(output)
    except Exception as e:
        print(e)
#5
def MapData():
    try:
        MapName = input("Enter Map Name: ")
        query = "select * from map where name = \"" + MapName + "\";"
        mycursor.execute(query)
        output = mycursor.fetchall() 
        printTable(output)
    except Exception as e:
        print(e)
#6
def ParticipantData():
    try:
        teamName = input("Team Name: ")
        query = "select * from participant_1 natural join participant_2 natural join participant_3 natural join `participant contact number` natural join `participant email-id` where `team name`=\""+teamName+"\";"
        mycursor.execute(query)
        output = mycursor.fetchall()
        printTable(output)
    except Exception as e:
        print(e)
#7
def RankParticipant():
    try:    
        query = "select * from participant_1 natural join participant_2 natural join participant_3 natural join `competitive careeer summary` order by kills desc, deaths asc, assists desc;"
        mycursor.execute(query)
        output = mycursor.fetchall()
        printTable(output)
    except Exception as e:
        print(e)
#8
def Performance():
    try:
        print("Select the parameter you want to sort the data by: ")
        Parameter = input()
        query = "select * from `competitive careeer summary` order by `" + Parameter + "`;"
        mycursor.execute(query)
        output = mycursor.fetchall()
        printTable(output)
    except Exception as e:
        print(e)
#9
def ParticipatingTeams():
    try:
        query = "select `team registration id`, `team name` from team_1 natural join team_2;"
        mycursor.execute(query)
        output = mycursor.fetchall()
        printTable(output)
    except Exception as e:
        print(e)
#10
def WeaponPR():
    try:
        query = "select count(*) as PickRate, guntype from `competitive careeer summary` group by guntype;"
        mycursor.execute(query)
        output = mycursor.fetchall()
        printTable(output)
    except Exception as e:
        print(e)

# Insertion functions:-

#11
def MapInsert():
    try:    
        name = input("Map Name: ")
        sites = input("Enter the number of sites you want in the map: ")
        query = "insert into map values (\"" + name + "\", \"" + sites + "\", 0, 0);"
        mycursor.execute(query)
        output = mycursor.fetchall()
        printTable(output)
    except Exception as e:
        print(e)
#12
def AddNewAgent():
    try:
        name = input("Agent Name: ")
        agtype = input("Agent Type: ")
        gender = input("Agent Gender: ")
        ba = input("Basic Ability: ")
        pa = input("Passive Ability: ")
        sa = input("Signature Ability: ")
        query1 = "insert into `agent` values (\"" + name + "\", \"" + agtype + "\", \"" + gender + "\");"
        mycursor.execute(query1)
        output = mycursor.fetchall()
        printTable(output)
        
        query1 = "insert into `passive abilities` values (\"" + name + "\", \"" + pa + "\");"
        mycursor.execute(query1)
        output = mycursor.fetchall()
        printTable(output)
        
        query1 = "insert into `basic abilities` values (\"" + name + "\", \"" + ba + "\");"
        mycursor.execute(query1)
        output = mycursor.fetchall()
        printTable(output)
        
        query1 = "insert into `signature abilities` values (\"" + name + "\", \"" + sa + "\");"
        mycursor.execute(query1)
        output = mycursor.fetchall()
        printTable(output)
    except Exception as e:
        print(e)
#13
def DelMap():
    try:
        mycursor.execute("select * from `map`;")
        output = mycursor.fetchall()
        printTable(output)
        mapname = input("Choose a map to delete: ")
        query = "DELETE FROM map WHERE name = \"" + mapname + "\";"
        mycursor.execute(query)
        mydb.commit()
        mycursor.execute("select * from `map`;")
        output = mycursor.fetchall()
        printTable(output)
    except Exception as e:
        print(e)
#14 
def DelParData():
    try:
        query = "select * from participant_1;"
        mycursor.execute(query)
        output = mycursor.fetchall()
        printTable(output)
        
        parid = input("Select Participant ID to delete: ")
        query = "delete from participant_1 where 'participant id' = " + parid + ";"
        mycursor.execute(query)
        output = mycursor.fetchall()
        printTable(output)
    except Exception as e:
        print(e)
#15
def insertTeam():
    try:
        tname = input("Team Name: ")
        cname = input("Coach name: ")
        dd = input("DD: ")
        mm = input("MM: ")
        yyyy = input("YYYY: ")
        gender = input("Coach gender: ")
        conum = input("Coach Phone Number(7digits): ")
        cmail = input("Coach Email ID: ")
        query = "insert into team_1 (`team name`) values (\"" + tname + "\");"
        mycursor.execute(query)
        mydb.commit()
        mycursor.execute("select `team registration id` from team_1 where `team name` = \"" + tname + "\";")
        output = mycursor.fetchall()
        a = str(output[-1]["team registration id"])
        query = "INSERT INTO team_2 VALUES ("+ a +", \"" + cname + "\", " + dd + ", " + mm + ", " + yyyy + ",\"" + gender + "\");"
        mycursor.execute(query)
        mydb.commit()
        query = "insert into `coach contact number` values (" + a + ", " + conum + ");"
        mycursor.execute(query)
        mydb.commit()
        query = "insert into `coach email-id` values ("+ a + ", \"" + cmail + "\");"
        mycursor.execute(query)
        mydb.commit()
        
        print()
        cname = input("Player1 name: ")
        dd = input("DD: ")
        mm = input("MM: ")
        yyyy = input("YYYY: ")
        gender = input("Player1 gender: ")
        riotID = input("Enter Riot_ID: ")
        conum = input("Participant Phone Number(7digits): ")
        cmail = input("Participant Email ID: ")
        query = "INSERT INTO participant_1(`name`,`dd`,`mm`,`yyyy`,`gender`) VALUES (\"" + cname + "\", " + dd + ", " + mm + ", " + yyyy + ",\"" + gender + "\");"
        mycursor.execute(query)
        mydb.commit()
        mycursor.execute("select * from participant_1 where name = \"" + cname + "\";")
        output = mycursor.fetchall()
        b = str(output[-1]["participant id"])
        query = "insert into participant_2 values(\"" + tname + "\", " + a + ", " + b + ");"
        mycursor.execute(query)
        mydb.commit()
        query = "insert into participant_3 values(" + riotID + ", " + b + ");"
        mycursor.execute(query)
        mydb.commit()
        query = "insert into `participant contact number` values (" + b + ", " + conum + ");"
        mycursor.execute(query)
        mydb.commit()
        query = "insert into `participant email-id` values ("+ b + ", \"" + cmail + "\");"
        mycursor.execute(query)
        mydb.commit()
        
        print()
        cname = input("Player2 name: ")
        dd = input("DD: ")
        mm = input("MM: ")
        yyyy = input("YYYY: ")
        gender = input("Player2 gender: ")
        riotID = input("Enter Riot_ID: ")
        conum = input("Participant Phone Number(7digits): ")
        cmail = input("Participant Email ID: ")
        query = "INSERT INTO participant_1(`name`,`dd`,`mm`,`yyyy`,`gender`) VALUES (\"" + cname + "\", " + dd + ", " + mm + ", " + yyyy + ",\"" + gender + "\");"
        mycursor.execute(query)
        mydb.commit()
        mycursor.execute("select * from participant_1 where name = \"" + cname + "\";")
        output = mycursor.fetchall()
        b = str(output[-1]["participant id"])
        query = "insert into participant_2 values(\"" + tname + "\", " + a + ", " + b + ");"
        mycursor.execute(query)
        mydb.commit()
        query = "insert into participant_3 values(" + riotID + ", " + b + ");"
        mycursor.execute(query)
        mydb.commit()
        query = "insert into `participant contact number` values (" + b + ", " + conum + ");"
        mycursor.execute(query)
        mydb.commit()
        query = "insert into `participant email-id` values ("+ b + ", \"" + cmail + "\");"
        mycursor.execute(query)
        mydb.commit()
        
        print()
        cname = input("Player3 name: ")
        dd = input("DD: ")
        mm = input("MM: ")
        yyyy = input("YYYY: ")
        gender = input("Player3 gender: ")
        riotID = input("Enter Riot_ID: ")
        conum = input("Participant Phone Number(7digits): ")
        cmail = input("Participant Email ID: ")
        query = "INSERT INTO participant_1(`name`,`dd`,`mm`,`yyyy`,`gender`) VALUES (\"" + cname + "\", " + dd + ", " + mm + ", " + yyyy + ",\"" + gender + "\");"
        mycursor.execute(query)
        mydb.commit()
        mycursor.execute("select * from participant_1 where name = \"" + cname + "\";")
        output = mycursor.fetchall()
        b = str(output[-1]["participant id"])
        query = "insert into participant_2 values(\"" + tname + "\", " + a + ", " + b + ");"
        mycursor.execute(query)
        mydb.commit()
        query = "insert into participant_3 values(" + riotID + ", " + b + ");"
        mycursor.execute(query)
        mydb.commit()
        query = "insert into `participant contact number` values (" + b + ", " + conum + ");"
        mycursor.execute(query)
        mydb.commit()
        query = "insert into `participant email-id` values ("+ b + ", \"" + cmail + "\");"
        mycursor.execute(query)
        mydb.commit()
    except Exception as e:
        print(e) 

mydb = pymysql.connect(
    host = "localhost",
    user = "root",
    password = "Bhvya@123",
    database = "VCT",
    cursorclass=pymysql.cursors.DictCursor
)

mycursor = mydb.cursor()

while True:

    try:    
        interface()
        i = int(input())
        
        if i == 1:
            getPlayerInfo()
        elif i == 2:
            Summary()
        elif i == 3:
            ParticipantPerformance()
        elif i == 4:
            AgentData()
        elif i == 5:
            MapData()
        elif i == 6:
            ParticipantData()
        elif i == 7:
            RankParticipant()
        elif i == 8:
            Performance()
        elif i == 9:
            ParticipatingTeams()
        elif i == 10:
            WeaponPR()
        elif i == 11:
            MapInsert()
        elif i == 12:
            AddNewAgent()
        elif i == 13:
            DelMap()
        elif i == 14:
            DelParData()
        elif i == 15:
            insertTeam()
        elif i == 16:
            break
        
        input("Press Enter to continue")
    except Exception as e:
        print(e)
    