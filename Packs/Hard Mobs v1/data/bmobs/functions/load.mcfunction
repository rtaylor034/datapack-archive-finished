
#GENERAL SCOREBOARDS
scoreboard objectives add gtimer dummy
scoreboard objectives add dmgDealt minecraft.custom:minecraft.damage_dealt

#FUNC
function bmobs:math/mathscoreboards
function bmobs:mobs/mobscoreboards

#LOAD
forceload add 0 0


#MESSAGE
tellraw @a {"color":"gray","text":"Better Mobs (HC1) - Loaded"}
