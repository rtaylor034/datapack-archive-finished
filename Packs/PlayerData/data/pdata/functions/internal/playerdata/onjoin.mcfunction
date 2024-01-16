#>pdata:internal/playerdata/onjoin
# as player that joined
#--------------------
# - internal/tick
#--------------------

data modify storage gssen:in cycleto.array set from storage pdata:data playerdata
data modify storage gssen:in cycleto.match.UUID set from entity @s UUID
function gssen:api/array/cycleto
execute if data storage pdata:data playerdata run data modify storage pdata:data playerdata set from storage gssen:out cycleto.array

execute unless score $cycleto-success gssen_out matches 1 run function pdata:internal/playerdata/register
execute if score $cycleto-success gssen_out matches 1 run function pdata:internal/playerdata/setdata

scoreboard players set @s pdata_rejoin -1