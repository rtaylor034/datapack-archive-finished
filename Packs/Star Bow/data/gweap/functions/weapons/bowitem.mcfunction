
scoreboard players add @s gtimer 1

particle firework ~ ~.3 ~ 0.05 0.05 0.05 0.02 1 force

execute as @s[scores={gtimer=1200..}] at @s run particle firework ~ ~.3 ~ 0.05 0.05 0.05 0.1 15 force
execute as @s[scores={gtimer=1200..}] at @s run kill @s


















