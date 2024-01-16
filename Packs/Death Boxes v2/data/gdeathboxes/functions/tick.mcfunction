
#FIRSTJOIN
execute as @a[tag=!gdeathboxes-j] at @s run function gdeathboxes:firstjoin

#MAINS
execute as @a at @s run function gdeathboxes:player/main
execute as @e[type=item,tag=gdb-box] at @s run function gdeathboxes:box/main
