#>gssen:internal/makefreeblock
#--------------------
# - internal/tick
# - internal/load
#--------------------

kill @e[type=marker, tag=gssen-freeblock]
summon marker ~ ~ ~ {Tags:["gssen-freeblock"]}
execute as @e[type=marker, tag=gssen-freeblock] run data modify entity @s Pos set from storage gssen:settings freeBlock