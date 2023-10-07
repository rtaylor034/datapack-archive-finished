#>pdata:internal/playerdata/genname
# as player registering | at gssen-freeblock
#--------------------
# - internal/playerdata/setdata
#--------------------

setblock ~ ~ ~ barrel
loot replace block ~ ~ ~ container.0 loot pdata:player/head
data modify storage pdata:data playerdata[0].name set from block ~ ~ ~ Items[0].tag.SkullOwner.Name
setblock ~ ~ ~ bedrock