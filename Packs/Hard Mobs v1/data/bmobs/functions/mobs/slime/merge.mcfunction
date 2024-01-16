#\Slime\

#SUMMON
scoreboard players add @s slimeSize 1
summon slime ~ ~ ~ {Tags:["smerge"],Size:10}
execute store result entity @e[tag=smerge,limit=1,sort=nearest] Size int 1.35 run scoreboard players get @s slimeSize
tag @e[tag=smerge] remove smerge
#EFFECTS
playsound entity.slime.attack hostile @a ~ ~ ~ 1 0

#DELETE
execute as @e[tag=sizefound,limit=1,sort=nearest] at @s run function bmobs:delete
function bmobs:delete







