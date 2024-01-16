#\Blaze\

#SHIELD BREAK
data merge entity @s {ActiveEffects:[{Id:10b,Amplifier:0b,Duration:0,ShowParticles:0b},{Id:11b,Amplifier:0b,Duration:0,ShowParticles:0b}],Attributes:[{Name:generic.knockbackResistance,Base:0}]}
#SCORES
scoreboard players set @s blazeTimer 100

#EFFECTS
particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 50
playsound block.fire.extinguish hostile @a ~ ~ ~ 1 0.9
playsound entity.blaze.ambient hostile @a ~ ~ ~ 1 2
