
#RUNS ON PLAYER DEATH






tag @s add gdb-dead
execute if entity @e[type=item,nbt={Age:0s}] run function gdeathboxes:box/spawn/run

#HEAD
execute if entity @a[scores={gdb_killdetect=1..}] run function gdeathboxes:player/drophead


#RESETS
scoreboard players reset @s gdb_deathdetect
scoreboard players reset @p[scores={gdb_killdetect=1..}] gdb_killdetect
scoreboard players reset deathChat gdb_var
