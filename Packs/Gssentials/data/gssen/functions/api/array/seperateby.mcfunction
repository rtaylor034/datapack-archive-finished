#> gssen : api/array > seperateby
#--------------------
# -> array : any[]
# -> seperator : any
#--------------------
# <<< array : any[]
#--------------------
#> inserts <seperator> inbetween every element of <array>
#--------------------
#- modified <array> outputs to >array<
#- element type of <array> must be the same type as <seperator>
#--------------------

#forloop
execute store result score $seperateby-i gssen_var if data storage gssen:in seperateby.array[]
execute if score $seperateby-i gssen_var matches 1.. run function gssen:internal/array/seperateby/foreach

#set out
data modify storage gssen:out seperateby.array set from storage gssen:in seperateby.array

#RESET
scoreboard players reset $seperateby-i gssen_var
data remove storage gssen:in seperateby
data remove storage gssen:var seperateby
