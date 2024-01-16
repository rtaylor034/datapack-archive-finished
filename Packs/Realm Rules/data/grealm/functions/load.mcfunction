
#GENERAL SCOREBOARDS
scoreboard objectives add gtimer dummy
scoreboard objectives add gplayerid dummy
scoreboard objectives add gscafthrown dummy


#TRACKING
scoreboard objectives add gposx dummy
scoreboard objectives add gposy dummy
scoreboard objectives add gposz dummy
scoreboard objectives add gdimen dummy
scoreboard objectives add ghealth health "Health"
scoreboard objectives setdisplay belowName ghealth

#TRIGGER
scoreboard objectives add find trigger
scoreboard objectives setdisplay list gplayerid
scoreboard players enable @a find

#FUNCTIONS
schedule clear grealm:sectick
function grealm:sectick



#MESSAGE
tellraw @a {"color":"gray","text":"Globby Lobby - Loaded"}
