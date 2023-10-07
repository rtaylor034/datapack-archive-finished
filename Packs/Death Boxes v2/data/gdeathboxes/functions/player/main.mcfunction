

#HOLDING
execute if data entity @s SelectedItem.tag.deathbox run data modify storage gdeathboxes:var holding set from entity @s SelectedItem
execute if data entity @s Inventory[{Slot:-106b}].tag.deathbox run data modify storage gdeathboxes:var holding set from entity @s Inventory[{Slot:-106b}]
execute if data storage gdeathboxes:var holding run function gdeathboxes:player/hold


execute as @s[scores={gdb_deathdetect=1..}] run function gdeathboxes:player/ondeath

#REMOVE TAG (very bad way of getting around insta unlock)
execute unless entity @e[type=item,tag=gdb-box,distance=0..1] run tag @s remove gdb-dead
