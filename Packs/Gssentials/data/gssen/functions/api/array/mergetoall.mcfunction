#> gssen : api/array > mergetoall
#--------------------
# -> array : obj[]
# -> merge : obj
# => condition : obj = {}
#--------------------
# <<< array : obj[]
#--------------------
#> merges <merge> to all elements of <array> that match <condition>
#--------------------
#- modified <array> outputs to >array<
#--------------------

#default condition
execute unless data storage gssen:in mergetoall.condition run data modify storage gssen:in mergetoall.condition set value {}

#merge
execute store result score $mergetoall-i gssen_var if data storage gssen:in mergetoall.array[]
execute if score $mergetoall-i gssen_var matches 1.. run function gssen:internal/array/mergetoall/foreach

#set out
data modify storage gssen:out mergetoall.array set from storage gssen:in mergetoall.array

#RESET
scoreboard players reset $mergetoall-i gssen_var
scoreboard players reset $mergetoall-keep gssen_var
data remove storage gssen:in mergetoall
data remove storage gssen:var mergetoall
