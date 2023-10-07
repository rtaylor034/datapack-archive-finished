
scoreboard players add @s gtimer 1

execute as @s[scores={gtimer=20}] at @s unless block ~ ~ ~ #minecraft:wither_immune run setblock ~ ~ ~ air
execute as @s[scores={gtimer=22..25}] at @s run summon creeper ~ ~ ~ {CustomName:'{"color":"#aaaaff","bold":true,"text":"Star Power"}',NoAI:1,Invulnerable:1,Silent:1,Fuse:0,ignited:1,ExplosionRadius:6}
execute as @s[scores={gtimer=23}] at @s run summon creeper ~ ~ ~ {CustomName:'{"color":"#aaaaff","bold":true,"text":"Star Power"}',NoAI:1,Invulnerable:1,Silent:1,Fuse:0,ignited:1,ExplosionRadius:12}
execute as @s[scores={gtimer=25}] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;6719955,15790320],FadeColors:[I;14602026]}],Flight:1}}}}

execute as @s[scores={gtimer=22..}] at @s run particle explosion_emitter ~ ~ ~ 1 1 1 1 1 force
execute as @s[scores={gtimer=22..}] at @s run particle end_rod ~ ~ ~ 0.1 0.1 0.5 0.5 110 force
execute as @s[scores={gtimer=22}] at @s run playsound entity.zombie_villager.cure master @a ~ ~ ~ 3.5 0.7
execute as @s[scores={gtimer=21}] at @s run kill @e[type=item,distance=0..10]
execute as @s[scores={gtimer=21}] at @s as @e[type=!area_effect_cloud,type=!#minecraft:impact_projectiles,type=!item,distance=0..10] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[I;14602026,6719955,15790320],FadeColors:[I;15790320]}],Flight:1}}}}
execute as @s[scores={gtimer=23..}] at @s as @e[type=item,distance=0..10,tag=!gbowitem] at @s run data merge entity @s {Invulnerable:1,Item:{id:"minecraft:diamond"}}
execute as @s[scores={gtimer=23..}] at @s as @e[type=item,distance=0..10] at @s run tag @s add gbowitem



execute as @s[scores={gtimer=26..}] at @s run kill @s






















