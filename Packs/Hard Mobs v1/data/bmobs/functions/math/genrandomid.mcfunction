
#\Assigns a random number to (@s -> randomid) of this entity\

scoreboard players set math randmax -1
function bmobs:math/random
scoreboard players operation @s randomid = math mathrand