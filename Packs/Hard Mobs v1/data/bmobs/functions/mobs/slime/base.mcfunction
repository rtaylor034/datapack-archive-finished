
#SPAWN
execute as @s[tag=!spawned] at @s run function bmobs:mobs/slime/spawn

#HIT
execute as @s[nbt={HurtTime:10s}] at @s run function bmobs:mobs/slime/hit

#MERGE
execute as @s[scores={slimeMergeCool=1..}] at @s run scoreboard players remove @s slimeMergeCool 1
execute as @s[scores={slimeMergeCool=0}] at @s if entity @e[type=slime,distance=0.05..6] run function bmobs:mobs/slime/mergebase






