#\Slime\

#SIZE CHECK
tag @s add sizeSearch
execute as @e[scores={slimeMergeCool=0},type=slime,distance=0.05..6] at @s if score @s slimeSize = @e[tag=sizeSearch,limit=1] slimeSize run tag @s add sizefound
tag @s remove sizeSearch


#MOTION
execute facing entity @e[tag=sizefound,type=slime,limit=1,sort=nearest,distance=0.05..6] feet run function bmobs:math/rotationtomotion
execute if entity @e[tag=sizefound,type=slime,limit=1,sort=nearest,distance=0.05..6] store result entity @s Motion[0] double .0000006 run scoreboard players get math rtmx
execute if entity @e[tag=sizefound,type=slime,limit=1,sort=nearest,distance=0.05..6] store result entity @s Motion[2] double .0000006 run scoreboard players get math rtmz

#MERGE
execute if entity @e[tag=sizefound,distance=0.05..1] run function bmobs:mobs/slime/merge



#TAG REMOVE
execute as @e[tag=sizefound] at @s run tag @s remove sizefound


