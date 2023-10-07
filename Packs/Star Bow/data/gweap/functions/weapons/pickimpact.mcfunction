
execute if block ~ ~ ~ lava[level=0] run setblock ~ ~ ~ obsidian
execute if block ~ ~ ~ lava run setblock ~ ~ ~ cobblestone
execute if block ~ ~ ~ water run setblock ~ ~ ~ air

execute at @s unless block ~ ~ ~ #wither_immune run execute as @a[tag=holdpick,limit=1,sort=nearest] store result score @s gweappickdrop run loot give @s mine ~ ~ ~ mainhand
execute unless block ~ ~ ~ #wither_immune run setblock ~ ~ ~ air
particle dust 0.9 0.9 1 1 ~ ~ ~ 0.4 0.4 0.4 1 7
execute as @a[tag=holdpick,limit=1,sort=nearest,scores={gweappickdrop=0}] run playsound entity.zombie.infect block @a ~ ~ ~ 0.07 2
execute as @a[tag=holdpick,limit=1,sort=nearest,scores={gweappickdrop=1..}] run playsound item.trident.hit block @a ~ ~ ~ 0.15 1.2
execute as @a[tag=holdpick,limit=1,sort=nearest,scores={gweappickdrop=1..}] at @s run playsound entity.item.pickup player @s ~ ~ ~ 0.08 2



kill @s











