
execute store success score @s gscafthrown run data get entity @s Thrower
execute as @s[scores={gscafthrown=0}] at @s run data merge entity @s {PickupDelay:0s}
execute as @s[scores={gscafthrown=0}] at @s run tp @s @p[distance=0..10]


