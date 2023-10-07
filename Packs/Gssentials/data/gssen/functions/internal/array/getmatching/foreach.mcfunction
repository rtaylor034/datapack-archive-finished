#>gssen:internal/array/getmatching/foreach
#--------------------
# - api/array/getmatching
#--------------------

#decriment
scoreboard players remove $getmatching-i gssen_var 1

#temp storage
data modify storage gssen:var getmatching.find set from storage gssen:in getmatching.array[0]

#compare
execute store success score $getmatching-keep gssen_var run data modify storage gssen:var getmatching.find merge from storage gssen:in getmatching.match

#add to array if found
execute if score $getmatching-keep gssen_var = $getmatching-invert gssen_var run data modify storage gssen:out getmatching.array append from storage gssen:in getmatching.array[0]

#cycle
data modify storage gssen:in getmatching.array append from storage gssen:in getmatching.array[0]
data remove storage gssen:in getmatching.array[0]

#loop
execute if score $getmatching-i gssen_var matches 1.. run function gssen:internal/array/getmatching/foreach
