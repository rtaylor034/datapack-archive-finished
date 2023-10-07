
#USE - opens this box and kills, releasing all items


#SOUND
playsound minecraft:entity.horse.saddle block @a ~ ~ ~ 1 1.5
particle minecraft:poof ~ ~.3 ~ 0.1 0.1 0.1 0.05 10


#FOREACH ITEM
data modify storage gdeathboxes:var array set from entity @s Item.tag.deathbox.items
execute if data storage gdeathboxes:var holding run data modify storage gdeathboxes:var array set from storage gdeathboxes:var holding.tag.deathbox.items
execute if data storage gdeathboxes:var array[] run function gdeathboxes:box/open/foreachitem

#FOREACH XP
data modify storage gdeathboxes:var xparray set from entity @s Item.tag.deathbox.xp
execute if data storage gdeathboxes:var holding run data modify storage gdeathboxes:var xparray set from storage gdeathboxes:var holding.tag.deathbox.xp
execute if data storage gdeathboxes:var xparray[] run function gdeathboxes:box/open/foreachxp


#FIND OWNER
execute as @s[type=item] run scoreboard players operation open.owner gdb_var = @s gdb_playerid
execute as @s[type=player] store result score open.owner gdb_var run data get storage gdeathboxes:var holding.tag.deathbox.playerid

execute as @a if score @s gdb_playerid = open.owner gdb_var run tag @s add gdb-open-owner


#CHAT INFO
execute if score chatInfo gdb_var matches 1.. run function gdeathboxes:process/location2text/run
execute if score chatInfo gdb_var matches 1.. run tellraw @a[tag=gdb-open-owner] ["",{"text":"[Death Boxes 2.0] ","color":"green","bold":true},{"text":"Your death box at ","color":"white"},{"nbt":"location2text.text","storage":"gdeathboxes:out","interpret":true,"color":"yellow"}, {"text":" has been opened!","color":"white"}]




#RESETS
data remove storage gdeathboxes:var array
data remove storage gdeathboxes:var xparray
data remove storage gdeathboxes:var holding
scoreboard players reset open.owner gdb_var
tag @a remove gdb-open-owner


#KILL
kill @s[type=item]
