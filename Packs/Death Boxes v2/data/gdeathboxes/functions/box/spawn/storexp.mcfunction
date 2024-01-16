
#CALL - box/spawn/run
#DESC - captures xp orbs

#get orbs
tag @e[type=minecraft:experience_orb,nbt={Age:0s},distance=0..5] add gdb-xpget

#add to data
execute as @e[type=minecraft:experience_orb,tag=gdb-xpget] at @s run data modify storage gdeathboxes:var spawn.data.tag.deathbox.xp append from entity @s Value

#KILL
kill @e[type=minecraft:experience_orb,tag=gdb-xpget]
