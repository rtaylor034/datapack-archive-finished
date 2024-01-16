
function grealm:admin/cmd/findback
tp @s @e[type=marker,limit=1,sort=nearest,tag=found]
execute if score @e[type=marker,limit=1,sort=nearest,tag=found] gtiemr matches 1 run forceload remove ~ ~
kill @e[type=marker,limit=1,sort=nearest,tag=found]
tag @e[type=marker,tag=found] remove found

gamemode survival @s
