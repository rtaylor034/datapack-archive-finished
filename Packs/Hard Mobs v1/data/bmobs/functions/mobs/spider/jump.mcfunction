#\Spider\

execute facing entity @a[distance=4..12,limit=1,sort=nearest] eyes run function bmobs:math/rotationtomotion
scoreboard players add @s rtmy 20000
execute store result entity @s Motion[0] double .0000018 run scoreboard players get math rtmx
execute store result entity @s Motion[1] double .0000018 run scoreboard players get math rtmy
execute store result entity @s Motion[2] double .0000018 run scoreboard players get math rtmz
scoreboard players set @s spidercool 60







