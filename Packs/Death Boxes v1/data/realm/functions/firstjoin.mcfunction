
tellraw @s ["",{"text":"Death Capsules","bold":true,"color":"green"},{"text":" by "},{"text":"GlobbyLikesSlime","color":"blue"},{"text":" installed."}]
scoreboard players add GLOBAL playerid 1
scoreboard players operation @s playerid = GLOBAL playerid
tag @s[scores={playerid=1..}] add joined3
