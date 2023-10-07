#> loggr : api > sendtochat
#--------------------
# [E] _players : type=player
# -> entry : obj (log entry)
#--------------------
# ...
#--------------------
#> sends an <entry> as a formatted chat message to <_players>
#--------------------
# ...
#--------------------

execute store result score $sendtochat-l loggr_var run data get storage loggr:in sendtochat.entry.level

execute if score $sendtochat-l loggr_var matches ..-1 run tellraw @a[tag=_loggr-sendtochat.players] ["",{"text":"[Log: ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.source","storage":"loggr:in","color":"aqua"},{"text":" @ ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.time.day","storage":"loggr:in","color":"#C8C8C8"},{"text":"-","color":"#C8C8C8"},{"nbt":"sendtochat.entry.time.tick","storage":"loggr:in", "color":"#C8C8C8"},{"text":" (","color":"#C8C8C8"},{"nbt":"sendtochat.entry.level","storage":"loggr:in","color":"white"},{"text":")] ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.message","storage":"loggr:in","interpret":false}]

execute if score $sendtochat-l loggr_var matches 0 run tellraw @a[tag=_loggr-sendtochat.players] ["",{"text":"[Log: ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.source","storage":"loggr:in","color":"aqua"},{"text":" @ ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.time.day","storage":"loggr:in","color":"#C8C8C8"},{"text":"-","color":"#C8C8C8"},{"nbt":"sendtochat.entry.time.tick","storage":"loggr:in", "color":"#C8C8C8"},{"text":" (","color":"#C8C8C8"},{"nbt":"sendtochat.entry.level","storage":"loggr:in","color":"light_purple"},{"text":")] ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.message","storage":"loggr:in","interpret":false,"color":"light_purple"}]

execute if score $sendtochat-l loggr_var matches 1 run tellraw @a[tag=_loggr-sendtochat.players] ["",{"text":"[Log: ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.source","storage":"loggr:in","color":"aqua"},{"text":" @ ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.time.day","storage":"loggr:in","color":"#C8C8C8"},{"text":"-","color":"#C8C8C8"},{"nbt":"sendtochat.entry.time.tick","storage":"loggr:in","color":"#C8C8C8"},{"text":" (","color":"#C8C8C8"},{"nbt":"sendtochat.entry.level","storage":"loggr:in","color":"red"},{"text":")] ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.message","storage":"loggr:in","interpret":false,"color":"red"}]

execute if score $sendtochat-l loggr_var matches 2 run tellraw @a[tag=_loggr-sendtochat.players] ["",{"text":"[Log: ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.source","storage":"loggr:in","color":"aqua"},{"text":" @ ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.time.day","storage":"loggr:in","color":"#C8C8C8"},{"text":"-","color":"#C8C8C8"},{"nbt":"sendtochat.entry.time.tick","storage":"loggr:in","color":"#C8C8C8"},{"text":" (","color":"#C8C8C8"},{"nbt":"sendtochat.entry.level","storage":"loggr:in","color":"gold"},{"text":")] ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.message","storage":"loggr:in","interpret":false,"color":"gold"}]

execute if score $sendtochat-l loggr_var matches 3 run tellraw @a[tag=_loggr-sendtochat.players] ["",{"text":"[Log: ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.source","storage":"loggr:in","color":"aqua"},{"text":" @ ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.time.day","storage":"loggr:in","color":"#C8C8C8"},{"text":"-","color":"#C8C8C8"},{"nbt":"sendtochat.entry.time.tick","storage":"loggr:in","color":"#C8C8C8"},{"text":" (","color":"#C8C8C8"},{"nbt":"sendtochat.entry.level","storage":"loggr:in","color":"gray"},{"text":")] ","color":"#C8C8C8"},{"nbt":"sendtochat.entry.message","storage":"loggr:in","interpret":false,"color":"gray"}]

#RESET
tag @a remove _loggr-sendtochat.players
data remove storage loggr:in sendtochat