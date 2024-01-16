
scoreboard players add @s gtimer 1
execute as @s[scores={gtimer=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["gpickmark","gpickstart"],Duration:10}
execute as @s[scores={gtimer=2..}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["gpickmark"],Duration:10}
tp @s ^ ^ ^0.5

execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air run summon area_effect_cloud ~ ~ ~ {Tags:["gpickimpact"],Duration:10}
execute as @s[scores={gtimer=20..}] at @s run tag @s add gdie
execute as @s[tag=gdie] at @s as @e[type=area_effect_cloud,tag=gpickimpact] at @s align xyz positioned ~.5 ~.5 ~.5 run function gweap:weapons/pickimpact
execute as @s[tag=gdie] at @s run kill @s
execute as @s[tag=gdie] at @s run kill @e[tag=gpickmark]


execute as @s[tag=!gdie] at @s run function gweap:weapons/picktrav



























