
#SPAWN
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["xpsta"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#EFFECTS
particle dust 0 1 0 1 ~ ~.1 ~ 0.25 0 0.25 1 10
playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 2


#KILL
execute as @e[type=item,sort=nearest,limit=1,distance=0..0.7,nbt={Item:{id:"minecraft:emerald",Count:1b}}] at @s run kill @s
kill @s
