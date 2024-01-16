#>gssen:internal/vector/add/loop
#--------------------
# - api/vector/add
#--------------------


execute store result score $add-a gssen_var run data get storage gssen:in add.a[0] 1000
execute store result score $add-b gssen_var run data get storage gssen:in add.b[0] 1000

scoreboard players operation $add-a gssen_var += $add-b gssen_var

execute store result storage gssen:var add.c double .001 run scoreboard players get $add-a gssen_var
data modify storage gssen:out add.result append from storage gssen:var add.c

data remove storage gssen:in add.a[0]
data remove storage gssen:in add.b[0]

execute unless data storage gssen:in add.a[] unless data storage gssen:in add.b[] run scoreboard players set $add-stop gssen_var 1

execute if score $add-stop gssen_var matches 0 run function gssen:internal/vector/add/loop