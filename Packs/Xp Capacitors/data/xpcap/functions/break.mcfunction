
#DROPS
loot spawn ~ ~.4 ~ loot xpcap:cmd/break
summon experience_orb ~ ~ ~ {Value:0,Tags:["xpsorb"]}
execute store result entity @e[type=experience_orb,tag=xpsorb,limit=1,sort=nearest] Value int 1 run scoreboard players get @s storedxp

kill @s
