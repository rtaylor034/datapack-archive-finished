#> pdata : api/admin > wipeplayerdata
#--------------------
# none
#--------------------
# none
#--------------------
#> deletes all playerdata and resets player ids
#--------------------
#- all players online will be immediately re-assigned a new player id and empty data
#- it is advised against wiping playerdata unless something is very wrong
#- wiping playerdata may cause irreversible damage to dependent packs, even if a backup is made
#--------------------

scoreboard players set $maxplayerid pdata_data 0
data remove storage pdata:data playerdata
scoreboard players set @a pdata_rejoin 0

#{loggr}
data modify storage loggr:in log set value {source:"pdata", level:0, message:"All player data wiped via pdata:api/admin/wipeplayerdata"}
function loggr:api/log