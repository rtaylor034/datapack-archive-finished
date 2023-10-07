
execute anchored eyes positioned ^ ^ ^.1 run kill @e[type=arrow,limit=1,sort=nearest]
execute anchored eyes run summon area_effect_cloud ~ ~ ~ {Tags:["gbowtrav"],Duration:10}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=gbowtrav] @s
execute anchored eyes run tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=gbowtrav] ^ ^-.2 ^.5
execute anchored eyes positioned ^ ^-.2 ^.5 run execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=gbowtrav] at @s run function gweap:weapons/bowtrav
playsound item.trident.thunder master @a ~ ~2 ~ 3.5 2

clear @s[gamemode=!creative] nether_star 1























