
#GENERAL SCOREBOARDS
scoreboard objectives add gdb_var dummy
scoreboard objectives add gdb_deathdetect deathCount
scoreboard objectives add gdb_killdetect playerKillCount
scoreboard objectives add gdb_playerid dummy
scoreboard objectives add gdb_const dummy

#BOX
scoreboard objectives add gdb_time dummy
scoreboard objectives add gdb_particles dummy
scoreboard objectives add gdb_despawn dummy


#CONTROLS
execute unless data storage gdeathboxes:controls main run function gdeathboxes:controls/setdefaults
execute store result score chatInfo gdb_var run data get storage gdeathboxes:controls main.player.chatInfo
execute store result score openOnDespawn gdb_var run data get storage gdeathboxes:controls main.box.openOnDespawn


#MESSAGE
execute if score installed slime_global matches 1.. run tellraw @a {"color":"gray","text":"Death Boxes - Loaded"}
execute unless score installed slime_global matches 1.. run tellraw @a {"color":"red","text":"Death Boxes failed to load. (Please install the SlimeCore datapack)"}
