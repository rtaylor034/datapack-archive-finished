
tellraw @s ["",{"text":"Death Boxes 2.0","bold":true,"color":"green"},{"text":" by "},{"text":"GlobbyLikesSlime","color":"blue"},{"text":" installed."}]

tag @s add gdeathboxes-j

#PLAYERID
scoreboard players add maxid gdb_var 1
scoreboard players operation @s gdb_playerid = maxid gdb_var
