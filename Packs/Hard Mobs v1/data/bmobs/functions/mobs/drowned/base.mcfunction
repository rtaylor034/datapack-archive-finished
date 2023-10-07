#\Drowned\
#SPAWN
execute as @s[tag=!spawned] at @s run function bmobs:mobs/drowned/spawn

#HIT
execute as @s[nbt={HurtTime:10s}] at @s run function bmobs:mobs/drowned/hit

#JUMP
execute as @s[scores={drownedcool=0}] at @s if entity @a[distance=0..10] if block ~ ~ ~ water[level=0] run function bmobs:mobs/drowned/jump
scoreboard players remove @s[scores={drownedcool=1..}] drownedcool 1





