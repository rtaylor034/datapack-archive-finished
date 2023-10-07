
scoreboard players add @s gtimer 1
execute as @s[scores={gtimer=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["gbowmark","gbowstart"],Duration:100}
summon area_effect_cloud ~ ~ ~ {Tags:["gbowmark"],Duration:100}
tp @s ^ ^ ^1.1

execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava run tag @s add gdie
execute as @s[scores={gtimer=150..}] at @s run tag @s add gdie

execute as @s[tag=gdie] at @s run summon area_effect_cloud ^ ^ ^-1 {Tags:["gbowimpact"],Duration:100}
execute as @s[tag=gdie] at @s run kill @s

execute as @s[tag=!gdie] at @s run function gweap:weapons/bowtrav



























