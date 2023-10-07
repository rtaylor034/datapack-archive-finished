
forceload remove ~ ~
playsound block.enchantment_table.use block @a ~ ~ ~ 2 1
execute as @e[type=item,tag=capsitem,distance=0..0.5] at @s run data merge entity @s {Invulnerable:0,NoGravity:0,Motion:[0.0,0.3,0.0],PickupDelay:0s,Age:0s}
execute as @e[type=item,tag=capsitem,distance=0..0.5] at @s run tag @s remove capsitem
particle firework ~ ~ ~ 0.2 0.2 0.2 0.1 20

function realm:tracking/findplayer
scoreboard players remove @a[tag=found,limit=1,sort=nearest] chestCount 1
tellraw @a[tag=found] ["",{"text":"[Death Capsule]","bold":true,"color":"green"},{"text":" Your capsule at ","color":"white"},{"score":{"name":"@s","objective":"chestx"},"color":"yellow"},{"text":" ","color":"yellow"},{"score":{"name":"@s","objective":"chesty"},"color":"yellow"},{"text":" ","color":"yellow"},{"score":{"name":"@s","objective":"chestz"},"color":"yellow"},{"text":" has been broken.","color":"white"}]
tag @a[tag=found] remove found


kill @s
