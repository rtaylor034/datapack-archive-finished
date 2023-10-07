#\Blaze\

#SPAWN
execute as @s[tag=!spawned] at @s run function bmobs:mobs/blaze/spawn

#HIT
execute as @s[nbt={HurtTime:10s}] at @s run function bmobs:mobs/blaze/hit

#SCORES
execute as @s[scores={blazeTimer=1}] run function bmobs:mobs/blaze/reset
execute as @s[scores={blazeTimer=1..}] run scoreboard players remove @s blazeTimer 1


