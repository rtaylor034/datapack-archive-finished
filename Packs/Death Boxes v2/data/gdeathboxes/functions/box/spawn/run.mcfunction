
#CALL - from this player
#USE - spawns a deathbox


#CHAT
execute if score chatInfo gdb_var matches 1.. run function gdeathboxes:process/location2text/run
execute if score chatInfo gdb_var matches 1.. run tellraw @s ["",{"text":"[Death Boxes 2.0] ","color":"green","bold":true},{"text":"Your death box is located at ","color":"white"},{"nbt":"location2text.text","storage":"gdeathboxes:out","interpret":true,"color":"yellow"},{"text":" in ","color":"white"},{"nbt":"Dimension","entity":"@s","color":"dark_green","italic":true}]



#ITEMS
#get items
tag @e[type=item,nbt={Age:0s},distance=0..5] add gdb-itemget

#add to array
data modify storage gdeathboxes:var spawn.data.tag.deathbox.items set value []
execute as @e[type=item,tag=gdb-itemget] at @s run data modify storage gdeathboxes:var spawn.data.tag.deathbox.items append from entity @s Item

#XP
execute store result score spawn.capturexp gdb_var run data get storage gdeathboxes:controls main.box.captureXP
execute if score spawn.capturexp gdb_var matches 1.. run function gdeathboxes:box/spawn/storexp
scoreboard players reset spawn.capturexp gdb_var

#BOX
summon item ~ ~ ~ {CustomNameVisible:1,Invulnerable:1,Tags:["init","gdb-box"],Item:{id:"minecraft:ender_chest",Count:1b,tag:{display:{Name:'{"text":"db"}',Lore:['{"text":"Hold in hand to open","color":"gray","italic":false}']},deathbox:{items:[]}}},PickupDelay:9999s,CustomName:'{"text":"Death Box","color":"red","bold":true}'}
scoreboard players operation @e[type=item,tag=init,limit=1] gdb_playerid = @s gdb_playerid
execute store result storage gdeathboxes:var spawn.data.tag.deathbox.playerid int 1 run scoreboard players get @s gdb_playerid

#tag
tag @s add gdb-spawnbox
#NAME
data modify storage slime:param parse.json set value '[{"selector":"@a[tag=gdb-spawnbox]","color":"light_purple"},{"text":"\'s Items","color":"light_purple"}]'
function slime:text/parse/run
data modify storage gdeathboxes:var spawn.data.tag.display.Name set from storage slime:out parse.text


#CONTROLS
#lock duration
execute store result score @e[type=item,limit=1,tag=init,sort=nearest] gdb_time run data get storage gdeathboxes:controls main.box.lockDuration -20
#lock duration
execute store result score @e[type=item,limit=1,tag=init,sort=nearest] gdb_despawn run data get storage gdeathboxes:controls main.box.despawnTime 20

#Invulnerable
data modify entity @e[type=item,tag=init,limit=1,sort=nearest] Invulnerable set from storage gdeathboxes:controls main.box.invincible
#show particles
execute store result score @e[type=item,limit=1,tag=init,sort=nearest] gdb_particles run data get storage gdeathboxes:controls main.box.showParticles

#set box nbt
data modify entity @e[type=item,limit=1,tag=init,sort=nearest] Item merge from storage gdeathboxes:var spawn.data

#RESETS
kill @e[type=item,tag=gdb-itemget]
tag @e[type=item] remove init
data remove storage gdeathboxes:var spawn
tag @s remove gdb-spawnbox
