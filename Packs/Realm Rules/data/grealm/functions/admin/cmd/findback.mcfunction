
tag @s add search
execute as @e[type=marker,tag=specmark] at @s if score @s gplayerid = @e[tag=search,limit=1] gplayerid run tag @s add found
tag @s remove search
