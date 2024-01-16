#\Husk\

playsound block.sand.break block @a ~ ~ ~ 0.6 0.8
particle block sand ~ ~ ~ 2 0.1 2 0.05 10
execute as @a[nbt={OnGround:1b},distance=0..4] at @s if block ~ ~-1 ~ sand run particle block sand ~ ~ ~ 0.2 0 0.2 0.05 10
effect give @s resistance 1 0 true

execute as @a[nbt={OnGround:1b},distance=0..4] at @s if block ~ ~-1 ~ sand run effect give @s slowness 1 1 true
execute as @a[nbt={OnGround:1b},distance=0..4] at @s if block ~ ~-1 ~ sand run effect give @s jump_boost 1 250 true
execute as @a[nbt={OnGround:1b},distance=0..4] at @s if block ~ ~-1 ~ sand run effect give @s weakness 1 0 true









