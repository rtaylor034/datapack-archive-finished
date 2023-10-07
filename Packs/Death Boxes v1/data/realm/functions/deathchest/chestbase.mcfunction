
execute as @a at @s run function realm:deathchest/deathcheck
execute as @e[type=minecraft:area_effect_cloud,tag=dcheck] at @s run function realm:deathchest/dcheckentity
execute as @e[type=minecraft:area_effect_cloud,tag=dcapsule] at @s run function realm:deathchest/chest
execute as @e[type=minecraft:area_effect_cloud,tag=dcheck] at @s unless entity @a[distance=0..1] run kill @s
