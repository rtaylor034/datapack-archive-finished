
#PICK
tag @s add holdpick
summon area_effect_cloud ~ ~ ~ {Tags:["gpicktrav"],Duration:10}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=gpicktrav] @s
execute anchored eyes run tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=gpicktrav] ^ ^ ^.2
execute anchored eyes positioned ^ ^ ^.2 run execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=gpicktrav] at @s run function gweap:weapons/picktrav
tag @s remove holdpick



