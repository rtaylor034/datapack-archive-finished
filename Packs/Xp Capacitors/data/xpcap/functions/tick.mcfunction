
#TEST FOR CREATE
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:emerald",Count:1b}}] at @s unless entity @e[type=minecraft:area_effect_cloud,tag=xpsta,distance=0..1] if block ~ ~ ~ light_weighted_pressure_plate as @e[type=item,distance=0..0.5,nbt={OnGround:1b,Item:{id:"minecraft:chest",Count:1b}}] at @s if block ~ ~ ~ light_weighted_pressure_plate align xyz positioned ~.5 ~.1 ~.5 run function xpcap:spawn

#BASE
execute as @e[type=area_effect_cloud,tag=xpsta] at @s run function xpcap:fullbase

#RESETS
execute as @a[scores={xpsneak=1..}] at @s run scoreboard players set @s xpsneak 0
execute as @a[tag=!xpcapjoin] at @s run function xpcap:firstjoin
