#\Blaze\

#SHIELD
data merge entity @s {ActiveEffects:[{Id:10b,Amplifier:1b,Duration:400,ShowParticles:0b},{Id:11b,Amplifier:100b,Duration:1999980,ShowParticles:0b}],Attributes:[{Name:generic.knockbackResistance,Base:1}]}

#SCORES
scoreboard players set @s blazeCharges 3
summon area_effect_cloud ~ ~ ~ {Tags:["blazesh","bspawn"],Duration:999999}
scoreboard players set @e[tag=bspawn,tag=blazesh,limit=1,sort=nearest] blazeCharges 3
execute store result score @e[tag=bspawn,tag=blazesh,limit=1,sort=nearest] randomid run scoreboard players get @s randomid
execute as @e[tag=bspawn,tag=blazesh,limit=1,sort=nearest] at @s run tag @s remove bspawn
#EFFECTS
playsound item.firecharge.use hostile @a ~ ~ ~ 1 0.7
particle flame ~ ~1 ~ 0.5 0.5 0.5 0.01 50

