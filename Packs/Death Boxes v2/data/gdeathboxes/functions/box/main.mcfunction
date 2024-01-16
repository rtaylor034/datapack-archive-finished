
#called every tick from each box

#TIME
scoreboard players add @s gdb_time 1

#AGE
data merge entity @s {Age:8s,PickupDelay:999s}

#UNLOCK
execute as @s[scores={gdb_time=1}] at @s run function gdeathboxes:box/unlock


#detect player
execute if entity @a[distance=0..1,tag=!gdb-dead] run function gdeathboxes:box/nearplayer

#PARTICLES
scoreboard players operation myid gdb_var = @s gdb_playerid
execute if score @s gdb_particles matches 1.. as @a if score @s gdb_playerid = myid gdb_var run tag @s add gdb-particleshow
particle minecraft:instant_effect ~ ~1 ~ 0.5 0.5 0.5 1 2 force @a[tag=gdb-particleshow,distance=15..]
particle minecraft:instant_effect ~ ~.4 ~ 0.1 0.1 0.1 1 1 force @a[tag=gdb-particleshow,distance=..15]
execute if score @s gdb_particles matches 1.. if block ~ ~ ~ minecraft:lava run particle minecraft:smoke ~ ~ ~ 0.08 0.08 0.08 0 2 normal

#DESPAWN
execute if score @s gdb_time > @s gdb_despawn run function gdeathboxes:box/despawn/run


#RESETS
tag @a remove gdb-particleshow
scoreboard players reset myid gdb_var
