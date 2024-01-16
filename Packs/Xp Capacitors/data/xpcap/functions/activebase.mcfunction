
#EFFECTS
tp @s ~ ~ ~ ~5 ~
particle instant_effect ^ ^ ^.6 0 0 0 0 1
particle instant_effect ^ ^ ^-.6 0 0 0 0 1
particle composter ~ ~-.1 ~ 0.3 0 0.3 0 1 force @a[distance=0..15]

#XP TRANSFER
execute store result score @s xprot run data get entity @a[distance=0..0.5,limit=1,sort=nearest] Rotation[1]

execute if entity @p[scores={xpsneak=1..},distance=0..0.5] run function xpcap:flow

#HUD
execute as @s[scores={xprot=-9..9}] at @s run title @a[distance=0..0.5] actionbar ["",{"text":"IN","color":"white"},{"text":" <<<","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"storedxp"},"bold":true,"color":"yellow"},{"text":" >>>","color":"gray"},{"text":" OUT"}]
execute as @s[scores={xprot=-39..-10}] at @s run title @a[distance=0..0.5] actionbar ["",{"text":"IN","color":"white"},{"text":" <<<","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"storedxp"},"bold":true,"color":"yellow"},{"text":" >","bold":true,"color":"green"},{"text":">>","color":"gray"},{"text":" OUT"}]
execute as @s[scores={xprot=-69..-40}] at @s run title @a[distance=0..0.5] actionbar ["",{"text":"IN","color":"white"},{"text":" <<<","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"storedxp"},"bold":true,"color":"yellow"},{"text":" >>","bold":true,"color":"green"},{"text":">","color":"gray"},{"text":" OUT"}]
execute as @s[scores={xprot=..-70}] at @s run title @a[distance=0..0.5] actionbar ["",{"text":"IN","color":"white"},{"text":" <<<","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"storedxp"},"bold":true,"color":"yellow"},{"text":" >>>","bold":true,"color":"green"},{"text":" OUT"}]

execute as @s[scores={xprot=10..39}] at @s run title @a[distance=0..0.5] actionbar ["",{"text":"IN","color":"white"},{"text":" <<","color":"gray"},{"text":"<","bold":true,"color":"green"},{"text":" "},{"score":{"name":"@s","objective":"storedxp"},"bold":true,"color":"yellow"},{"text":" >>>","color":"gray"},{"text":" OUT"}]
execute as @s[scores={xprot=40..69}] at @s run title @a[distance=0..0.5] actionbar ["",{"text":"IN","color":"white"},{"text":" <","color":"gray"},{"text":"<<","bold":true,"color":"green"},{"text":" "},{"score":{"name":"@s","objective":"storedxp"},"bold":true,"color":"yellow"},{"text":" >>>","color":"gray"},{"text":" OUT"}]
execute as @s[scores={xprot=70..}] at @s run title @a[distance=0..0.5] actionbar ["",{"text":"IN","color":"white"},{"text":" <<<","bold":true,"color":"green"},{"text":" "},{"score":{"name":"@s","objective":"storedxp"},"bold":true,"color":"yellow"},{"text":" >>>","color":"gray"},{"text":" OUT"}]

#DEACTIVE
execute unless entity @a[distance=0..0.5] run function xpcap:deactivate