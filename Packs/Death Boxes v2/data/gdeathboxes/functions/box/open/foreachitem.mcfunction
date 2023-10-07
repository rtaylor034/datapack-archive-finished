
#disperses items

summon item ~ ~ ~ {Tags:["init"],Item:{id:"minecraft:slime_ball",Count:1b},Motion:[0.0d,0.3d,0.0d]}

data modify entity @e[type=item,limit=1,sort=nearest,tag=init] Item set from storage gdeathboxes:var array[0]





#RESET
tag @e[type=item] remove init

#REMOVE
data remove storage gdeathboxes:var array[0]

#LOOP
execute if data storage gdeathboxes:var array[] run function gdeathboxes:box/open/foreachitem
