#>gssen-settings

#settings stored in gssen:settings <path>

#>> DEV - MAKE THIS DEFAULT TO DEPEND PLAYERS LOCATION FOR GARUNTEED SPAWN CHUNK
#>-------------------
# > freeBlock : double[3] (space vector)
# default: [0.5d, -63.5d, 0.5d]
#-------------------
#~ location of freeblock
#-------------------
#- marker with tag 'gssen-freeblock' is at this location
#- designed as a safe block to do any sub-tick operations that require a block (ex: sign parsing)
#- location must be forceloaded
#-------------------
data modify storage gssen:settings freeBlock set value [0.5d, -63.5d, 0.5d]
forceload add -1 -1 0 0
#>-------------------
