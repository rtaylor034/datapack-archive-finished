#\Blaze (shield)\
tag @s add bsearch
execute as @e[type=blaze] at @s if score @s randomid = @e[tag=bsearch,limit=1,sort=nearest] randomid run tag @s add bsfound
tag @s remove bsearch
#POSITIONING
tp @s ~ ~ ~ ~7 ~
data modify entity @s Pos set from entity @e[tag=bsfound,limit=1] Pos


#EFFECTS
execute as @s[scores={blazeCharges=1..}] at @s run particle flame ^ ^1 ^1 0 0 0 0 1 force
execute as @s[scores={blazeCharges=2..}] at @s run particle flame ^-.4 ^0.4 ^-.6 0 0 0 0 1 force
execute as @s[scores={blazeCharges=3..}] at @s run particle flame ^.6 ^1.5 ^.2 0 0 0 0 1 force



#KILLCHECK
execute as @s[scores={blazeCharges=0}] at @s run function bmobs:delete
execute unless entity @e[tag=bsfound] run function bmobs:delete

execute as @e[tag=bsfound] run tag @s remove bsfound