#>pdata:internal/playerdata/setdata
# as player registering
#--------------------
# - internal/playerdata/register
# - internal/playerdata/onjoin
#--------------------

execute store result score @s pdata_playerid run data get storage pdata:data playerdata[0].id
execute at @e[type=marker, tag=gssen-freeblock, limit=1] run function pdata:internal/playerdata/genname


