#> gssen : api/math > pow
#--------------------
# -> $num$
# -> $exponent$
#--------------------
# <<< $value$
#--------------------
#> raises <num> to the power of <exponent>
#--------------------
#- 
#--------------------

#init vars
scoreboard players set $pow-value gssen_out 1
scoreboard players operation $pow-mult gssen_var = $pow-num gssen_in

#multiply
execute if score $pow-exponent gssen_in matches 1.. run function gssen:internal/math/pow/mult

#RESET
scoreboard players reset $pow-num gssen_in
scoreboard players reset $pow-exponent gssen_in