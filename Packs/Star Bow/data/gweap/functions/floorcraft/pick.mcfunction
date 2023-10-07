
#CRAFT
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b}},distance=0..1,limit=1,sort=nearest]
summon item ~ ~ ~ {PickupDelay:60s,Tags:["starpickcraft"],Invulnerable:1,Motion:[0.0d,0.05d,0.0d],NoGravity:1,Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Enchantments:[{lvl:10s,id:"minecraft:infinity"}],starpick:1,Unbreakable:1,display:{Name:'{"color":"#eebbff","italic":false,"text":"Star Breaker"}'}}}}

playsound block.beacon.power_select master @a ~ ~ ~ 2 1.2
particle end_rod ~ ~.5 ~ 0.1 0.1 0.1 0.1 50 force
kill @s





