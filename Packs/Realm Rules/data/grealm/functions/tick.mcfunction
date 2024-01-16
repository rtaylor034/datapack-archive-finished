
#FIRSTJOIN
execute as @a[tag=!globbyjoined] at @s run function grealm:firstjoin

#ANTIFISH
#execute as @e[type=fishing_bobber] at @s run function grealm:rules/antifish

#TRIGGER
#execute as @a[scores={find=1..}] at @s run function grealm:trigger/find

#SCAFFOLDING
execute as @e[type=item,nbt={Item:{id:"minecraft:scaffolding"}}] at @s run function grealm:scaffolding/break
