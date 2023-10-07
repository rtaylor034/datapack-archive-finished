#> gssen : api/array > cycleto
#--------------------
# -> array : obj[]
# -> match : obj
#--------------------
# <<< array : obj[]
# <<< $success$
#--------------------
#> finds the first element in <array> that matches the nbt of <match> and cycles to it
#--------------------
#- cycled <array> outputs to >array< (found element will be >array<[0])
#- >success< will output 1 if any match was found, 0 otherwise
#- if <array> has multiple matching elements, this method will cycle to the lowest index matching element
#--------------------

#search
execute store result score $cycleto-i gssen_var if data storage gssen:in cycleto.array[]
execute if score $cycleto-i gssen_var matches 1.. run function gssen:internal/array/cycleto/foreach

#set outs
data modify storage gssen:out cycleto.array set from storage gssen:in cycleto.array
execute store success score $cycleto-success gssen_out if score $cycleto-keep gssen_var matches 0

#RESET
scoreboard players reset $cycleto-i gssen_var
scoreboard players reset $cycleto-keep gssen_var
data remove storage gssen:in cycleto
data remove storage gssen:var cycleto