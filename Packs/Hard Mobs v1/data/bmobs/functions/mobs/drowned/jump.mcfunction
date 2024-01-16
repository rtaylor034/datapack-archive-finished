#\Drowned\

execute facing entity @a[distance=0..10,limit=1,sort=nearest] feet run function bmobs:math/rotationtomotion
execute store result entity @s Motion[0] double .0000005 run scoreboard players get math rtmx
execute store result entity @s Motion[1] double .0000005 run scoreboard players get math rtmy
execute store result entity @s Motion[2] double .0000005 run scoreboard players get math rtmz
scoreboard players set @s drownedcool 30

#EFFECTS
particle bubble ~ ~1 ~ 0.3 0.3 0.3 0.8 20
playsound entity.generic.swim block @a ~ ~ ~ 1 0.7




