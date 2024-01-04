@#> gssen : api/array > getmatching
#--------------------
# -> array : obj[]
# -> match : obj
# => invert : bool = 0
#--------------------
# <<< array : obj[]
#--------------------
#> gets all elements of <array> that match the nbt of <match>
#> if <invert> is 1, gets all elements that do NOT match
#--------------------
#- elements are output to >array<
#- if no elements match, >array< will be empty
#- elements in >array< retain the order they had in <array>
#--------------------

#out init
data modify storage gssen:out getmatching.array set value []

#store invert
execute store result score $getmatching-invert gssen_var run data get storage gssen:in getmatching.invert
execute unless data storage gssen:in getmatching.invert run scoreboard players set $getmatching-invert gssen_var 0

#foreach loop
execute store result score $getmatching-i gssen_var if data storage gssen:in getmatching.array[]
execute if score $getmatching-i gssen_var matches 1.. run function gssen:internal/array/getmatching/foreach

#RESET
scoreboard players reset $getmatching-i gssen_var
scoreboard players reset $getmatching-keep gssen_var
scoreboard players reset $getmatching-invert gssen_var
data remove storage gssen:var getmatching
data remove storage gssen:in getmatching
