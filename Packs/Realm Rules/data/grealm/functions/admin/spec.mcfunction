summon marker ~ ~ ~ {Tags:["specmark","cmd"],CustomName:'{"text":"Spectator Mark"}'}
scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=specmark] gplayerid = @s gplayerid
gamemode spectator @s

execute store success score @e[type=minecraft:marker,tag=specmark,limit=1,sort=nearest] gtimer run forceload add ~ ~
