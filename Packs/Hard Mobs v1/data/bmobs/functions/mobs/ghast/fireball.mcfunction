#\Ghast (fireball)\

#SCORES
execute if entity @a[distance=0..20] run scoreboard players add @s gtimer 1
scoreboard players add @s fbDeathTimer 1
#MOTION
execute as @s[scores={gtimer=1..60}] at @s facing entity @p feet run function bmobs:math/rotationtomotion
execute as @s[scores={gtimer=1..60}] store result entity @s power[0] double .0000001 run scoreboard players get math rtmx
execute as @s[scores={gtimer=1..60}] store result entity @s power[1] double .0000001 run scoreboard players get math rtmy
execute as @s[scores={gtimer=1..60}] store result entity @s power[2] double .0000001 run scoreboard players get math rtmz

#EFFECTS
execute as @s[scores={gtimer=1}] at @s run particle large_smoke ~ ~.3 ~ 0.3 0.3 0.3 0.2 30 force
execute as @s[scores={gtimer=1}] at @s run playsound entity.ghast.shoot block @a ~ ~ ~ 2 0.7
execute as @s[scores={gtimer=1}] at @s run particle flame ~ ~.3 ~ 0.3 0.3 0.3 0.15 20 force
execute as @s[scores={gtimer=1..60}] run particle smoke ~ ~.3 ~ 0.2 0.2 0.2 0.1 7 force

execute as @s[scores={fbDeathTimer=600}] run function bmobs:delete






