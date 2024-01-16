#>pdata:internal/playerdata/register
# as player registering
#--------------------
# - internal/playerdata/onjoin
#--------------------

scoreboard players add $maxplayerid pdata_data 1
execute store result storage pdata:var register.id int 1 run scoreboard players get $maxplayerid pdata_data

data modify storage pdata:var register.UUID set from entity @s UUID
data modify storage pdata:var register.storage set value {}

data modify storage pdata:data playerdata prepend from storage pdata:var register

function pdata:internal/playerdata/setdata

#{loggr}
data modify storage loggr:in log set value {source:"pdata", level:3}
data modify storage loggr:in log.message."new player registered" set from storage pdata:data playerdata[0]
function loggr:api/log


#resets
data remove storage pdata:var register