
#\Run this function to assign all players a new id\

tag @a[tag=!joined2] add needid
scoreboard players set idmin idmin 0
execute as @a[tag=joined2] at @s run scoreboard players add idmin idmin 1

execute as @a[tag=!joined2] at @s run scoreboard players operation @s playerid = idmin idmin


function realm:tracking/id






