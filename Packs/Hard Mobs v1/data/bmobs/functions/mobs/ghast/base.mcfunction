#\Ghast\
#SPAWN
execute as @s[tag=!spawned] at @s run function bmobs:mobs/ghast/spawn

#HIT
execute as @s[nbt={HurtTime:10s}] at @s run function bmobs:mobs/ghast/hit

execute as @e[type=fireball,distance=0..6,tag=!gfball] at @s run tag @s add gfball



