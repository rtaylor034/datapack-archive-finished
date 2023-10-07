
#CHEST
scoreboard players add @s gtimer 1
particle enchant ~ ~.5 ~ 0.1 0.1 0.1 0.2 2
execute as @e[type=item,tag=capsitem,distance=0..0.5] at @s run data merge entity @s {NoGravity:1,Motion:[0.0,0.0,0.0],PickupDelay:99s,Age:0s}
tp @e[type=item,distance=0..0.5] ~ ~ ~
execute unless entity @e[type=item,tag=capsitem,distance=0..0.5] run setblock ~ ~ ~ air

execute as @s[scores={gtimer=..1199}] at @s if entity @a[distance=0..1,nbt={DeathTime:0s}] run function realm:tracking/findplayer
execute as @s[scores={gtimer=..1199}] at @s if entity @a[distance=0..1,tag=found] run scoreboard players set @s gtimer 1200
execute as @s[scores={gtimer=1200}] at @s run tag @a[tag=found] remove found

execute as @s[scores={gtimer=1200}] at @s run data merge entity @s {CustomName:'{"text":"Unlocked","color":"green","bold":true}'}
execute as @s[scores={gtimer=1200}] at @s run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1 2

execute unless block ~ ~ ~ glass run kill @e[distance=0..1,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:glass",Count:1b}}]
execute as @s[scores={gtimer=..1199}] at @s unless block ~ ~ ~ glass run setblock ~ ~ ~ glass
execute as @s[scores={gtimer=1200..}] at @s unless block ~ ~ ~ glass run function realm:deathchest/break

execute as @s[scores={gtimer=18000}] at @s run function realm:tracking/findplayer
execute as @s[scores={gtimer=18000}] at @s run tellraw @a[tag=found] ["",{"text":"[Death Capsule]","bold":true,"color":"green"},{"text":" Your capsule at "},{"score":{"name":"@s","objective":"chestx"},"color":"yellow"},{"text":" ","color":"yellow"},{"score":{"name":"@s","objective":"chesty"},"color":"yellow"},{"text":" ","color":"yellow"},{"score":{"name":"@s","objective":"chestz"},"color":"yellow"},{"text":" has despawned!"}]
execute as @s[scores={gtimer=18000}] at @s run setblock ~ ~ ~ air
