
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["dcheck","spndc"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=spndc,sort=nearest,limit=1] ownerid = @s playerid
tag @e[type=minecraft:area_effect_cloud,tag=spndc,sort=nearest,limit=1] remove spndc
