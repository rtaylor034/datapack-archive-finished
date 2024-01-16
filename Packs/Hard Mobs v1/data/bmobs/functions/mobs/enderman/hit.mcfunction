#\Enderman\
#TP
particle large_smoke ~ ~2 ~ 0.3 0.7 0.3 0 20
summon endermite ~ ~ ~
execute facing entity @p[distance=0..7] eyes positioned ^ ^ ^6 run spreadplayers ~ ~ 1 5 false @s
playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1.1



