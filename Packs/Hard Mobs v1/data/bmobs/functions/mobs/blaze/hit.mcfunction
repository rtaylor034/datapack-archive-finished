#\Blaze\
tag @s add bsearch
execute as @e[tag=blazesh] at @s if score @s randomid = @e[tag=bsearch,limit=1,sort=nearest] randomid run tag @s add bfound
tag @s remove bsearch

#EFFECTS
execute as @s[scores={blazeCharges=1..}] at @s run stopsound @a[distance=0..8] * entity.blaze.hurt
execute as @s[scores={blazeCharges=1..}] at @s run playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 0
execute as @s[scores={blazeCharges=1..}] at @s run playsound entity.blaze.shoot hostile @a ~ ~ ~ 1.1 1
execute as @s[scores={blazeCharges=1..}] at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.01 20

#FIREBALL
execute as @s[scores={blazeCharges=1..}] at @s anchored eyes facing entity @p eyes run summon small_fireball ^ ^ ^.5 {Tags:["bfball"]}
#SHIELD
execute as @s[scores={blazeCharges=0..}] run scoreboard players remove @s blazeCharges 1
execute as @s[scores={blazeCharges=0..}] store result score @e[tag=blazesh,tag=bfound] blazeCharges run scoreboard players get @s blazeCharges
execute as @s[scores={blazeCharges=-1}] run scoreboard players add @s blazeTimer 25

#BREAK
execute as @s[scores={blazeCharges=0}] at @s run function bmobs:mobs/blaze/break

execute as @e[tag=bfound] run tag @s remove bfound