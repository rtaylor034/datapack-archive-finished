#\Skeleton\
#SPAWN
execute as @s[tag=!spawned] at @s run function bmobs:mobs/skeleton/spawn

#HIT
execute as @s[nbt={HurtTime:10s}] at @s run function bmobs:mobs/skeleton/hit

#KITE
execute anchored eyes positioned ^ ^ ^.1 if entity @e[tag=!skelereg,type=arrow,distance=0..0.5] run function bmobs:mobs/skeleton/kite
execute as @e[tag=!skelereg,type=arrow,distance=0..5] run tag @s add skelereg






