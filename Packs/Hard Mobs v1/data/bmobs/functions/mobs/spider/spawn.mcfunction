#\Spider\

data merge entity @s {Health:10f,Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.movementSpeed,Base:.4},{Name:generic.attackDamage,Base:4}]}
summon spider ~ ~.3 ~ {Tags:["spawned"],Health:10f,Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.movementSpeed,Base:.36},{Name:generic.attackDamage,Base:2.5}]}

scoreboard players set @e[type=spider,distance=0..0.5,limit=3,sort=nearest] spidercool 0
tag @s add spawned











