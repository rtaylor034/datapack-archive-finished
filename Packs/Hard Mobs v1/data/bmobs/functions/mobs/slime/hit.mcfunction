#\Slime\

#WEAKEN
effect give @a[distance=0..6,scores={dmgDealt=1..}] weakness 5 0
effect give @a[distance=0..6,scores={dmgDealt=1..}] slowness 5 0

#EFFECTS
execute as @a[distance=0..6,scores={dmgDealt=1..}] at @s run particle item_slime ~ ~1 ~ 0.3 0.6 0.3 1 30

#MERGECOOL
execute as @s[scores={slimeMergeCool=0..60}] run scoreboard players set @s slimeMergeCool 60