#>loggr-settings

#>-------------------
# > storageCapacity : int
#-------------------
#~ maximum amount of stored log entries
#-------------------
#- oldest logs are deleted to keep total stored logs at this capacity
#- logs are checked/deleted every 5 seconds
#-------------------
data modify storage loggr:settings storageCapacity set value 10000
#>-------------------
