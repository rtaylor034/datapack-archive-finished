
#SPAWN CHEST
setblock ~ ~ ~ glass destroy
forceload add ~ ~
execute as @e[type=item,tag=!capsitem,tag=!cmd,distance=0..3,nbt={Age:1s}] at @s run data merge entity @s {Invulnerable:1,NoGravity:1,Motion:[0.0,0.0,0.0],PickupDelay:999s,Age:-99999s}
execute align xyz run tp @e[type=item,tag=!capsitem,tag=!cmd,distance=0..3,nbt={Age:0s}] ~.5 ~.1 ~.5
execute as @e[type=item,tag=!capsitem,tag=!cmd,distance=0..3,nbt={Age:0s}] at @s run tag @s add capsitem
execute align xyz run summon minecraft:area_effect_cloud ~.5 ~.1 ~.5 {Tags:["dcapsule"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomNameVisible:1b,CustomName:'{"text":"Locked","color":"#ff2222","bold":true}'}
execute align xyz positioned ~.5 ~.1 ~.5 run scoreboard players operation @e[tag=dcapsule,limit=1,sort=nearest] ownerid = @a[tag=found,limit=1,sort=nearest] playerid
execute align xyz store result score @e[tag=dcapsule,limit=1,sort=nearest] chestx run data get entity @s Pos[0]
execute align xyz store result score @e[tag=dcapsule,limit=1,sort=nearest] chesty run data get entity @s Pos[1]
execute align xyz store result score @e[tag=dcapsule,limit=1,sort=nearest] chestz run data get entity @s Pos[2]

tellraw @a[tag=found] ["",{"text":"[Death Capsule]","bold":true,"color":"green"},{"text":" You died at","color":"white"},{"text":" "},{"score":{"name":"@e[tag=dcapsule,limit=1,sort=nearest]","objective":"chestx"},"color":"yellow"},{"text":" ","color":"yellow"},{"score":{"name":"@e[tag=dcapsule,limit=1,sort=nearest]","objective":"chesty"},"color":"yellow"},{"text":" ","color":"yellow"},{"score":{"name":"@e[tag=dcapsule,limit=1,sort=nearest]","objective":"chestz"},"color":"yellow"},{"text":" ","color":"yellow"}]



execute as @a[tag=found,limit=1,sort=nearest] at @s run scoreboard players add @s chestCount 1
