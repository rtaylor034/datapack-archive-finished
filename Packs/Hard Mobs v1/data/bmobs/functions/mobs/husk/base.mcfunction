#\Husk\
#SPAWN
execute as @s[tag=!spawned] at @s run function bmobs:mobs/husk/spawn

#HIT
execute as @s[nbt={HurtTime:10s}] at @s run function bmobs:mobs/husk/hit
execute as @s[nbt={OnGround:1b}] if entity @a[distance=0..4] if block ~ ~-1 ~ sand run function bmobs:mobs/husk/sand










