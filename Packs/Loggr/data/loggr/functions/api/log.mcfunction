#> loggr : api > log
#--------------------
# -> message : any
# -> source : string
# => level : int = -1
#--------------------
# <<< entry : obj (log entry)
#--------------------
#> saves a log >entry< with <message> and <level>
#> the function path that called this function should be specified in <source>
#--------------------
#- also sends the entry as a chat msg to any player with a loggr_listento score >= <level>
#- see 'readme.txt' for information on log levels
#--------------------

#default in
execute store result score $log-level loggr_var run data get storage loggr:in log.level
execute unless data storage loggr:in log.level run scoreboard players set $log-level loggr_var -1

#time
execute store result storage loggr:var log.entry.time.day int 1 run time query day
execute store result storage loggr:var log.entry.time.tick int 1 run time query daytime

#info
data modify storage loggr:var log.entry.message set from storage loggr:in log.message
data modify storage loggr:var log.entry.source set from storage loggr:in log.source
execute store result storage loggr:var log.entry.level int 1 run scoreboard players get $log-level loggr_var

#chat
data modify storage loggr:in sendtochat.entry set from storage loggr:var log.entry
execute as @a if score @s loggr_listento >= $log-level loggr_var run tag @s add _loggr-sendtochat.players
function loggr:api/sendtochat

#add to logs
data modify storage loggr:data logs append from storage loggr:var log.entry

#RESET
scoreboard players reset $log-level loggr_var
data remove storage loggr:var log
data remove storage loggr:in log