#> gssen : api/vector > space2rot
#--------------------
# -> space : double[3] (space vector)
#--------------------
# <<< rotation : float[2] (rotation vector)
#--------------------
#> gets the >rotation< vector that faces in the direction of a <space> vector
#--------------------
#- >rotation[0]< = -arctan(<space[0]> / <space[2]>)
#- >rotation[1]< = -arctan(<space[1]> / sqrt(<space[0]>^2 + <space[2]>^2)]
#- inverse of rot2space
#--------------------

#reset out
data modify storage gssen:out space2rot.rotation set value [0.0f,0.0f]

#tracking entities
execute positioned 0 0 0 align xyz run summon marker ~ ~ ~ {Tags:["_gssen-space2rot","_gssen-space2rot-b"]}
summon marker 0 0 0 {Tags:["_gssen-space2rot","_gssen-space2rot-m"]}

#set position
execute as @e[type=marker,tag=_gssen-space2rot-m] at @s run data modify entity @s Pos set from storage gssen:in space2rot.space

#rotation
execute as @e[type=marker,tag=_gssen-space2rot-b] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=_gssen-space2rot-m,limit=1,sort=nearest]

#out set
data modify storage gssen:out space2rot.rotation set from entity @e[type=marker,tag=_gssen-space2rot-b,limit=1] Rotation


#END
kill @e[type=marker,tag=_gssen-space2rot]
data remove storage gssen:in space2rot
