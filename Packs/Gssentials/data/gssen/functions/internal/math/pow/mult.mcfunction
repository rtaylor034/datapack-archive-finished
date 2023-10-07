#>gssen:internal/math/pow/mult
#--------------------
# - api/math/pow
#--------------------

#decriment
scoreboard players remove $pow-exponent gssen_in 1

#multiply
scoreboard players operation $pow-value gssen_out *= $pow-mult gssen_var

#loop
execute if score $pow-exponent gssen_in matches 1.. run function gssen:internal/math/pow/mult
