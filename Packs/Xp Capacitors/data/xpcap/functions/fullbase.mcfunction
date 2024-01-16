
#EFFECTS
execute as @s[tag=!active] at @s if entity @a[distance=0..15] run function xpcap:base
execute as @s[tag=active] at @s if entity @a[distance=0..15] run function xpcap:activebase

execute unless block ~ ~ ~ light_weighted_pressure_plate run function xpcap:break