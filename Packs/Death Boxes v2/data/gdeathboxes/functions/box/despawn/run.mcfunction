
#CALL - from deathbox
#USE - despawns this deathbox

#FIND OWNER
execute as @s[type=item] run scoreboard players operation despawn.owner gdb_var = @s gdb_playerid
execute as @s[type=player] store result score despawn.owner gdb_var run data get storage gdeathboxes:var holding.tag.deathbox.playerid
execute as @a if score @s gdb_playerid = despawn.owner gdb_var run tag @s add gdb-despawn-owner

execute if score chatInfo gdb_var matches 1.. run function gdeathboxes:process/location2text/run
execute if score chatInfo gdb_var matches 1.. run tellraw @a[tag=gdb-despawn-owner] ["",{"text":"[Death Boxes 2.0] ","color":"green","bold":true},{"text":"Your death box at ","color":"white"},{"nbt":"location2text.text","storage":"gdeathboxes:out","interpret":true,"color":"yellow"}, {"text":" has been despawned.","color":"white"}]

#RESETS
tag @a remove gdb-despawn-owner
scoreboard players reset despawn.owner gdb_var


#die
execute if score openOnDespawn gdb_var matches 1 run function gdeathboxes:box/open/run
kill @s
