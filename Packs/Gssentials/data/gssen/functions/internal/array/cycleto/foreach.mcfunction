#>gssen:internal/array/cycleto/foreach
#--------------------
# - api/array/cycleto
#--------------------

#decriment
scoreboard players remove $cycleto-i gssen_var 1

#cycle
data modify storage gssen:in cycleto.array append from storage gssen:in cycleto.array[0]
data remove storage gssen:in cycleto.array[0]

#compare
data modify storage gssen:var cycleto.find set from storage gssen:in cycleto.array[0]
execute store success score $cycleto-keep gssen_var run data modify storage gssen:var cycleto.find merge from storage gssen:in cycleto.match

#loop
execute if score $cycleto-i gssen_var matches 1.. unless score $cycleto-keep gssen_var matches 0 run function gssen:internal/array/cycleto/foreach
