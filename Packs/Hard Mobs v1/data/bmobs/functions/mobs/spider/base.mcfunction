#\Spider\
#SPAWN
execute as @s[tag=!spawned] at @s run function bmobs:mobs/spider/spawn

#HIT
execute as @s[nbt={HurtTime:10s}] at @s run function bmobs:mobs/spider/hit

#JUMP
execute as @s[scores={spidercool=0}] at @s if entity @a[distance=4..12] run function bmobs:mobs/spider/jump
scoreboard players remove @s[scores={spidercool=1..}] spidercool 1
execute as @s[nbt={OnGround:0b}] at @s run data merge entity @s {FallDistance:0}






