
scoreboard players add @s gtimer 1
particle dust 0.9 0.9 1 0.3 ~ ~ ~ 0.05 0.05 0.05 1 2 force
execute as @s[scores={gtimer=15..}] at @s run particle dust 0.9 0.9 1 0.7 ~ ~ ~ 0.05 0.05 0.05 1 2 force

execute as @s[tag=!gbowstart,scores={gtimer=20..}] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;14602026,6719955],FadeColors:[I;6719955,15790320]}],Flight:1}}}}
execute as @s[tag=gbowstart,scores={gtimer=20..}] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;14602026,6719955],FadeColors:[I;6719955,15790320]}],Flight:1}}}}
execute as @s[tag=gbowstart,scores={gtimer=20..}] at @s run playsound item.trident.thunder master @a ~ ~2 ~ 4 1.4



execute as @s[scores={gtimer=20..}] at @s run kill @s
























