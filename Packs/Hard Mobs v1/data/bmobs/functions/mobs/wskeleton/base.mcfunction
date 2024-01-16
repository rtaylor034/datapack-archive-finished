#\Wither Skeleton\

#SPAWN
execute as @s[tag=!spawned] at @s run function bmobs:mobs/wskeleton/spawn

#HIT
execute as @s[nbt={HurtTime:10s}] at @s run function bmobs:mobs/wskeleton/hit

#SWAP
execute as @s[nbt={HandItems:[{id:"minecraft:stone_sword"}]}] at @s if entity @a[distance=7..40] unless entity @a[distance=0..7] run data merge entity @s {HandItems:[{id:"minecraft:bow",Count:1}]}
execute as @s[nbt={HandItems:[{id:"minecraft:bow"}]}] at @s if entity @a[distance=0..7] run data merge entity @s {HandItems:[{id:"minecraft:stone_sword",Count:1}]}




