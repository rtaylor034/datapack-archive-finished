
#FIRSTJOIN
execute as @a[tag=!gweapjoined] at @s run function gweap:firstjoin

#BASE
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:nether_star"}]}] at @s run function gweap:nbase
execute as @a[nbt={SelectedItem:{tag:{starpick:1}}}] at @s run function gweap:weapons/pickbase
execute as @e[type=area_effect_cloud,tag=gbowmark] at @s run function gweap:weapons/bowmark
execute as @e[type=area_effect_cloud,tag=gbowimpact] at @s run function gweap:weapons/bowimpact
execute as @e[type=item,tag=gbowitem] at @s run function gweap:weapons/bowitem
execute as @e[type=item] at @s run function gweap:floorcraft/fcbase





#RESET
scoreboard players set @a[scores={gweapbow=1..}] gweapbow 0



