#\Blaze\

function bmobs:math/genrandomid
scoreboard players set @s blazeTimer 1
data merge entity @s {Health:24f,Attributes:[{Name:generic.maxHealth,Base:24},{Name:generic.attackKnockback,Base:3}]}
tag @s add spawned











