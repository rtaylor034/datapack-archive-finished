
#unlocks this box

data modify entity @s Item.id set value "minecraft:chest"

playsound minecraft:block.iron_trapdoor.open block @a ~ ~ ~ 0.8 1.5

scoreboard players set @s[scores={gdb_time=..1}] gdb_time 1

particle crit ~ ~.1 ~ 0 0 0 0.5 20 force

data modify entity @s CustomName set value '{"text":"Death Box","color":"green"}'
