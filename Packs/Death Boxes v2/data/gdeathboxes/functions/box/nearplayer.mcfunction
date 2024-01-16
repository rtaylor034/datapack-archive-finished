
#called if a player is within 1 block


scoreboard players operation id gdb_var = @s gdb_playerid
execute if score @s gdb_time matches ..0 as @a[distance=0..1] if score @s gdb_playerid = id gdb_var run tag @s add gdb-owner
execute if entity @a[tag=gdb-owner] run function gdeathboxes:box/unlock



execute if score @s gdb_time matches 1.. run function gdeathboxes:box/open/run






#RESETS
scoreboard players reset id gdb_var
tag @a remove gdb-owner
