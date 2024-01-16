
#PLAYER
#\tags and gets rotation\
execute as @p[scores={xpsneak=1..},distance=0..0.5] at @s run tag @s add xpsneak

#FLOWS
execute as @s[scores={xprot=70..}] at @s if entity @a[tag=xpsneak,limit=1,sort=nearest,scores={xp=20..}] run function xpcap:flows/in20
execute as @s[scores={xprot=40..69}] at @s if entity @a[tag=xpsneak,limit=1,sort=nearest,scores={xp=10..}] run function xpcap:flows/in10
execute as @s[scores={xprot=10..39}] at @s if entity @a[tag=xpsneak,limit=1,sort=nearest,scores={xp=5..}] run function xpcap:flows/in5

execute as @s[scores={storedxp=20..,xprot=..-70}] at @s run function xpcap:flows/out20
execute as @s[scores={storedxp=10..,xprot=-69..-40}] at @s run function xpcap:flows/out10
execute as @s[scores={storedxp=5..,xprot=-39..-10}] at @s run function xpcap:flows/out5

#RESETS
execute as @a[tag=xpsneak] at @s run tag @s remove xpsneak
