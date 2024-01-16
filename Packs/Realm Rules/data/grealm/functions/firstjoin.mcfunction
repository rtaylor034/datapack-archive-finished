
tellraw @s ["",{"text":"Globby Lobby","bold":true,"color":"green"},{"text":" by "},{"text":"GlobbyLikesSlime","color":"blue"},{"text":" installed."}]
scoreboard players add GLOBAL gplayerid 1
scoreboard players operation @s gplayerid = GLOBAL gplayerid
tag @s add globbyjoined

scoreboard players enable @s find

recipe give @s *
