#\Blaze (fireball)\


#MOTION
execute facing entity @p eyes run function bmobs:math/rotationtomotion
execute store result entity @s Motion[0] double .0000005 run scoreboard players get math rtmx
execute store result entity @s Motion[1] double .0000005 run scoreboard players get math rtmy
execute store result entity @s Motion[2] double .0000005 run scoreboard players get math rtmz

execute store result entity @s power[0] double .0000001 run scoreboard players get math rtmx
execute store result entity @s power[1] double .0000001 run scoreboard players get math rtmy
execute store result entity @s power[2] double .0000001 run scoreboard players get math rtmz

tag @s remove bfball




