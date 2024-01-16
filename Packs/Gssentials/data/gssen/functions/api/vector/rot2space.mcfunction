#> gssen : api/vector > rot2space
#--------------------
# -> rotation : float[2] (rotation vector)
# => magnitude : decimal{3} = 1.000
#--------------------
# <<< space : double[3] (space vector)
#--------------------
#> generates a >space< vector with magnitude <magnitude> in the direction of <rotation>
#--------------------
#- >space< = [-sin(<rotation[0]>), -sin(<rotation[1]), cos(<rotation[0]>)] * <magnitude>
#- inverse of space2rot
#--------------------

#init out
data modify storage gssen:out rot2space.space set value [0.0d,0.0d,0.0d]

#init in
execute unless data storage gssen:in rot2space.magnitude run data modify storage gssen:in rot2space.magnitude set value 1.0d

#setup vars
execute store result score $rot2space-c gssen_var run data get storage gssen:in rot2space.magnitude 1000

#entity tp
execute positioned 0 0 0 align xyz summon marker run function gssen:internal/vector/rot2space/tp

#RESET
data remove storage gssen:in rot2space
scoreboard players reset $rot2space-c gssen_var
