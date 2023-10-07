
tag @s add findsearch
execute as @a at @s if score @s gplayerid = @e[tag=findsearch,limit=1] find run tag @s add found
tag @s remove findsearch

execute if entity @a[tag=found] run tellraw @s ["",{"text":"[Player Finder]","color":"yellow"},{"text":" "},{"selector":"@a[tag=found,limit=1]","color":"#DBDBDB"},{"text":" | ","color":"#DBDBDB"},{"score":{"name":"@e[tag=found,limit=1]","objective":"gposx"},"color":"#CAF63A"},{"text":" ","color":"#CAF63A"},{"score":{"name":"@e[tag=found,limit=1]","objective":"gposy"},"color":"#CAF63A"},{"text":" ","color":"#CAF63A"},{"score":{"name":"@e[tag=found,limit=1]","objective":"gposz"},"color":"#CAF63A"},{"text":" | ","color":"#DBDBDB"},{"score":{"name":"@e[tag=found,limit=1]","objective":"ghealth"},"bold":true,"color":"#FF4444"}]
execute unless entity @a[tag=found] run tellraw @s ["",{"text":"[Player Finder] ","color":"yellow"},{"text":"There is no player with an ID of ","color":"red"},{"score":{"name":"@s","objective":"find"},"color":"red"},{"text":" online.","color":"red"}]
execute as @a[tag=found,limit=1] at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 2
tellraw @a[tag=found,limit=1] ["",{"text":"[Player Finder] ","color":"yellow"},{"selector":"@s","bold":true,"color":"green"},{"text":" found you.","color":"yellow"}]
tag @a remove found

scoreboard players enable @s find
scoreboard players set @s find 0


