
#FIRSTJOIN
execute as @a[tag=!namecjoined] at @s run function namecolor:firstjoin

execute as @a[scores={namecolor=0..}] at @s run function namecolor:trigger
