
#disperses items

summon minecraft:experience_orb ~ ~ ~ {Tags:["init"],Motion:[0.0d,0.2d,0.0d]}

data modify entity @e[type=minecraft:experience_orb,limit=1,sort=nearest,tag=init] Value set from storage gdeathboxes:var xparray[0]





#RESET
tag @e[type=minecraft:experience_orb] remove init

#REMOVE
data remove storage gdeathboxes:var xparray[0]

#LOOP
execute if data storage gdeathboxes:var xparray[] run function gdeathboxes:box/open/foreachxp
