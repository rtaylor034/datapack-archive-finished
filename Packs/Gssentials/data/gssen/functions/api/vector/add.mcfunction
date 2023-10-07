#> gssen : api/vector > add
#--------------------
# -> a : decimal{3}[]
# -> b : decimal{3}[]
#--------------------
# <<< result : double[]
#--------------------
#> adds vectors <a> and <b>
#--------------------
#- 0s will be assumed after the last index of the smaller vector if <a> and <b> are different sizes
#--------------------

#init out
data modify storage gssen:out add.result set value []

scoreboard players set $add-stop gssen_var 0
execute unless data storage gssen:in add.a[] unless data storage gssen:in add.b[] run scoreboard players set $add-stop gssen_var 1

execute if score $add-stop gssen_var matches 0 run function gssen:internal/vector/add/loop

#RESET
data remove storage gssen:in add
data remove storage gssen:var add
scoreboard players reset $add-stop gssen_var
scoreboard players reset $add-a gssen_var
scoreboard players reset $add-b gssen_var
