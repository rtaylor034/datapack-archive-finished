#\Slime\

#DATA
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:20s},{id:"minecraft:projectile_protection",lvl:20s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.knockbackResistance,Base:.5}]}
scoreboard players set @s slimeMergeCool 150
execute store result score @s slimeSize run data get entity @s Size

#EFFECTS
tag @s add spawned











