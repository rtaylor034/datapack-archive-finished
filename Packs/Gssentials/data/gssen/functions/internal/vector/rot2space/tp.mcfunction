#>gssen:internal/vector/rot2space/tp
#as function helper marker
#--------------------
# - api/vector/rot2space
#--------------------

data modify entity @s Rotation set from storage gssen:in rot2space.rotation

#[Practically unnecessary]
execute at @s if score $rot2space-c gssen_var matches 1073741824.. run tp @s ^ ^ ^1073741.824
execute if score $rot2space-c gssen_var matches 1073741824.. run scoreboard players remove $rot2space-c gssen_var 1073741824
execute at @s if score $rot2space-c gssen_var matches 536870912.. run tp @s ^ ^ ^536870.912
execute if score $rot2space-c gssen_var matches 536870912.. run scoreboard players remove $rot2space-c gssen_var 536870912
execute at @s if score $rot2space-c gssen_var matches 268435456.. run tp @s ^ ^ ^268435.456
execute if score $rot2space-c gssen_var matches 268435456.. run scoreboard players remove $rot2space-c gssen_var 268435456
execute at @s if score $rot2space-c gssen_var matches 134217728.. run tp @s ^ ^ ^134217.728
execute if score $rot2space-c gssen_var matches 134217728.. run scoreboard players remove $rot2space-c gssen_var 134217728
execute at @s if score $rot2space-c gssen_var matches 67108864.. run tp @s ^ ^ ^67108.864
execute if score $rot2space-c gssen_var matches 67108864.. run scoreboard players remove $rot2space-c gssen_var 67108864
execute at @s if score $rot2space-c gssen_var matches 33554432.. run tp @s ^ ^ ^33554.432
execute if score $rot2space-c gssen_var matches 33554432.. run scoreboard players remove $rot2space-c gssen_var 33554432
execute at @s if score $rot2space-c gssen_var matches 16777216.. run tp @s ^ ^ ^16777.216
execute if score $rot2space-c gssen_var matches 16777216.. run scoreboard players remove $rot2space-c gssen_var 16777216
execute at @s if score $rot2space-c gssen_var matches 8388608.. run tp @s ^ ^ ^8388.608
execute if score $rot2space-c gssen_var matches 8388608.. run scoreboard players remove $rot2space-c gssen_var 8388608
execute at @s if score $rot2space-c gssen_var matches 4194304.. run tp @s ^ ^ ^4194.304
execute if score $rot2space-c gssen_var matches 4194304.. run scoreboard players remove $rot2space-c gssen_var 4194304
execute at @s if score $rot2space-c gssen_var matches 2097152.. run tp @s ^ ^ ^2097.152
execute if score $rot2space-c gssen_var matches 2097152.. run scoreboard players remove $rot2space-c gssen_var 2097152
execute at @s if score $rot2space-c gssen_var matches 1048576.. run tp @s ^ ^ ^1048.576
execute if score $rot2space-c gssen_var matches 1048576.. run scoreboard players remove $rot2space-c gssen_var 1048576
#[Practically unnecessary]

execute at @s if score $rot2space-c gssen_var matches 524288.. run tp @s ^ ^ ^524.288
execute if score $rot2space-c gssen_var matches 524288.. run scoreboard players remove $rot2space-c gssen_var 524288
execute at @s if score $rot2space-c gssen_var matches 262144.. run tp @s ^ ^ ^262.144
execute if score $rot2space-c gssen_var matches 262144.. run scoreboard players remove $rot2space-c gssen_var 262144
execute at @s if score $rot2space-c gssen_var matches 131072.. run tp @s ^ ^ ^131.072
execute if score $rot2space-c gssen_var matches 131072.. run scoreboard players remove $rot2space-c gssen_var 131072
execute at @s if score $rot2space-c gssen_var matches 65536.. run tp @s ^ ^ ^65.536
execute if score $rot2space-c gssen_var matches 65536.. run scoreboard players remove $rot2space-c gssen_var 65536
execute at @s if score $rot2space-c gssen_var matches 32768.. run tp @s ^ ^ ^32.768
execute if score $rot2space-c gssen_var matches 32768.. run scoreboard players remove $rot2space-c gssen_var 32768
execute at @s if score $rot2space-c gssen_var matches 16384.. run tp @s ^ ^ ^16.384
execute if score $rot2space-c gssen_var matches 16384.. run scoreboard players remove $rot2space-c gssen_var 16384
execute at @s if score $rot2space-c gssen_var matches 8192.. run tp @s ^ ^ ^8.192
execute if score $rot2space-c gssen_var matches 8192.. run scoreboard players remove $rot2space-c gssen_var 8192
execute at @s if score $rot2space-c gssen_var matches 4096.. run tp @s ^ ^ ^4096
execute if score $rot2space-c gssen_var matches 4096.. run scoreboard players remove $rot2space-c gssen_var 4096
execute at @s if score $rot2space-c gssen_var matches 2048.. run tp @s ^ ^ ^2.048
execute if score $rot2space-c gssen_var matches 2048.. run scoreboard players remove $rot2space-c gssen_var 2048
execute at @s if score $rot2space-c gssen_var matches 1024.. run tp @s ^ ^ ^1.024
execute if score $rot2space-c gssen_var matches 1024.. run scoreboard players remove $rot2space-c gssen_var 1024
execute at @s if score $rot2space-c gssen_var matches 512.. run tp @s ^ ^ ^.512
execute if score $rot2space-c gssen_var matches 512.. run scoreboard players remove $rot2space-c gssen_var 512
execute at @s if score $rot2space-c gssen_var matches 256.. run tp @s ^ ^ ^.256
execute if score $rot2space-c gssen_var matches 256.. run scoreboard players remove $rot2space-c gssen_var 256
execute at @s if score $rot2space-c gssen_var matches 128.. run tp @s ^ ^ ^.128
execute if score $rot2space-c gssen_var matches 128.. run scoreboard players remove $rot2space-c gssen_var 128
execute at @s if score $rot2space-c gssen_var matches 64.. run tp @s ^ ^ ^.064
execute if score $rot2space-c gssen_var matches 64.. run scoreboard players remove $rot2space-c gssen_var 64
execute at @s if score $rot2space-c gssen_var matches 32.. run tp @s ^ ^ ^.032
execute if score $rot2space-c gssen_var matches 32.. run scoreboard players remove $rot2space-c gssen_var 32
execute at @s if score $rot2space-c gssen_var matches 16.. run tp @s ^ ^ ^.016
execute if score $rot2space-c gssen_var matches 16.. run scoreboard players remove $rot2space-c gssen_var 16
execute at @s if score $rot2space-c gssen_var matches 8.. run tp @s ^ ^ ^.008
execute if score $rot2space-c gssen_var matches 8.. run scoreboard players remove $rot2space-c gssen_var 8
execute at @s if score $rot2space-c gssen_var matches 4.. run tp @s ^ ^ ^.004
execute if score $rot2space-c gssen_var matches 4.. run scoreboard players remove $rot2space-c gssen_var 4
execute at @s if score $rot2space-c gssen_var matches 2.. run tp @s ^ ^ ^.002
execute if score $rot2space-c gssen_var matches 2.. run scoreboard players remove $rot2space-c gssen_var 2
execute at @s if score $rot2space-c gssen_var matches 1.. run tp @s ^ ^ ^.001
execute if score $rot2space-c gssen_var matches 1.. run scoreboard players remove $rot2space-c gssen_var 1

execute at @s run data modify storage gssen:out rot2space.motion set from entity @s Pos

kill @s