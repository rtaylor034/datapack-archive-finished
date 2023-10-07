#\Zombie\

data merge entity @s {Health:30f,CanBreakDoors:1b,Attributes:[{Name:generic.maxHealth,Base:30},{Name:generic.knockbackResistance,Base:.8},{Name:zombie.spawnReinforcements,Base:.25},{Name:generic.attackKnockback,Base:0}]}
data merge entity @s[nbt={IsBaby:1b}] {Health:20f,CanBreakDoors:1b,Attributes:[{Name:generic.maxHealth,Base:20},{Name:generic.knockbackResistance,Base:.5},{Name:zombie.spawnReinforcements,Base:.1}]}
tag @s add spawned











