#>gssen:internal/array/mergetoall/foreach
#--------------------
# - api/array/mergetoall
#--------------------

#DECRIMENT
scoreboard players remove $mergetoall-i gssen_var 1

#INPUT INTO STORAGE NBT
data modify storage gssen:var mergetoall.find set from storage gssen:in mergetoall.array[0]

#COMPARE
execute store success score $mergetoall-keep gssen_var run data modify storage gssen:var mergetoall.find merge from storage gssen:in mergetoall.condition

#add to array if found
execute if score $mergetoall-keep gssen_var matches 0 run data modify storage gssen:in mergetoall.array[0] merge from storage gssen:in mergetoall.merge

#CYCLE
data modify storage gssen:in mergetoall.array append from storage gssen:in mergetoall.array[0]
data remove storage gssen:in mergetoall.array[0]

#LOOP
execute if score $mergetoall-i gssen_var matches 1.. run function gssen:internal/array/mergetoall/foreach
