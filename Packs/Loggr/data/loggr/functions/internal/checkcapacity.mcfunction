#>loggr:internal/checkcapacity
#--------------------
# - internal/load
# @self
#--------------------

execute store result score $checkcapacity-tot loggr_var if data storage loggr:data logs[]
execute store result score $checkcapacity-cap loggr_var run data get storage loggr:settings storageCapacity
scoreboard players operation $checkcapacity-tot loggr_var -= $checkcapacity-cap loggr_var
execute if score $checkcapacity-tot loggr_var matches 1.. run function loggr:internal/clearcapacity

#RESET
scoreboard players reset $checkcapacity-tot loggr_var
scoreboard players reset $checkcapacity-cap loggr_var

schedule function loggr:internal/checkcapacity 5s
