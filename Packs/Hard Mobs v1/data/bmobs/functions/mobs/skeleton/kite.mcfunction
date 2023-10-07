#\Skeleton\


function bmobs:math/rotationtomotion
execute store result entity @s Motion[0] double -.00000065 run scoreboard players get math rtmx
execute store result entity @s Motion[2] double -.00000065 run scoreboard players get math rtmz
data modify entity @s Motion[1] set value 0.3












