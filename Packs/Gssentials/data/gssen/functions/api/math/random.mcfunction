#> gssen : api/math > random
#--------------------
# => $max$ = 32767
#--------------------
# <<< $value$
#--------------------
#> generates a psuedo-random >value< between 0 and <max>
#--------------------
#- if <max> is negative it will be set to the default parameter
#- generated value will lose integrity and possibly overflow if <max> is set above 32767
#--------------------

#default in
execute unless score $random-max gssen_in matches 0.. run scoreboard players set $random-max gssen_in 32767

#val fixing
scoreboard players set $random-maxbit gssen_var 32768
scoreboard players add $random-max gssen_in 1

scoreboard players set $random-value gssen_out 0
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 1
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 2
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 4
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 8
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 16
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 32
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 64
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 128
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 256
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 512
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 1024
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 2048
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 4096
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 8192
execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 16384

#removed to prevent overflow
#execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 32768
#execute if predicate gssen:halfchance run scoreboard players add $random-value gssen_out 65536

scoreboard players operation $random-value gssen_out *= $random-max gssen_in
scoreboard players operation $random-value gssen_out /= $random-maxbit gssen_var

#FOR DEV CHECKING VALUE
#tellraw @a {"score":{"name":"$random-value","objective":"gssen_out"}}

#RESETS
scoreboard players reset $random-max gssen_in
scoreboard players reset $random-maxbit gssen_var
