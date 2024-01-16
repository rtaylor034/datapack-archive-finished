#>gssen:internal/array/seperateby/foreach
#--------------------
# - api/array/seperateby
#--------------------

#DECRIMENT
scoreboard players remove $seperateby-i gssen_var 1

#CYCLE
data modify storage gssen:in seperateby.array append from storage gssen:in seperateby.array[0]
data remove storage gssen:in seperateby.array[0]

#ADD SEPERATOR
execute if score $seperateby-i gssen_var matches 1.. run data modify storage gssen:in seperateby.array append from storage gssen:in seperateby.seperator

#LOOP
execute if score $seperateby-i gssen_var matches 1.. run function gssen:internal/array/seperateby/foreach
