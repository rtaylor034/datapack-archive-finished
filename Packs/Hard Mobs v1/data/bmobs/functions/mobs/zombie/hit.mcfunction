#\Zombie\
#RAGE
effect give @s speed 3 0 true
effect give @s resistance 3 1 true
effect give @s strength 3 0 false

#BLOOD
execute as @s[nbt=!{IsBaby:1b}] run particle block redstone_block ~ ~1 ~ 0.3 0.5 0.3 1 20 normal @a[tag=!noblood]
execute as @s[nbt={IsBaby:1b}] run particle block redstone_block ~ ~.5 ~ 0.2 0.3 0.2 1 15 normal @a[tag=!noblood]





