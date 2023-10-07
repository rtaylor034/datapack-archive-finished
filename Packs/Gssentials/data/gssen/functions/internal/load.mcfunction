#>gssen:internal/load
#--------------------
# @LOAD
#--------------------
#-SlimeCore Install--
data modify storage slimec:in install set value {dependencies:[{downloadmessage:'{"text":"(download SlimeCore)","color":"blue","clickEvent":{"action":"open_url","value":"https://www.minecraftjson.com"},"hoverEvent":{"action":"show_text","contents":[{"text":"(Clickable Link)","color":"gray"}]}}',name:"SlimeCore",namespace:"slimec",version:1}],downloadmessage:'{"text":"(Download PACKNAME)","color":"blue","clickEvent":{"action":"open_url","value":"https://www.minecraftjson.com"},"hoverEvent":{"action":"show_text","contents":[{"text":"(Clickable Link)","color":"gray"}]}}',name:"Gssentials",namespace:"gssen",supports:[],version:1}
function slimec:api/pack/install
execute unless data storage slimec:out install.runcheck run tellraw @s ["",{"text":"A datapack that is trying to load requires the ","color":"red"},{"text":"SlimeCore","color":"#385AE0"},{"text":" datapack to function.","color":"red"},"\n",{"text":"(download SlimeCore)","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://www.minecraftjson.com"},"hoverEvent":{"action":"show_text","contents":[{"text":"(Clickable Link)","color":"gray"}]}}]
execute unless data storage slimec:out install.runcheck run return 0
execute unless score $install-success slimec_out matches 1 run return 0
#--------------------

#settings
function gssen:settings

#free block
function gssen:internal/makefreeblock

#scoreboards
scoreboard objectives add gssen_in dummy
scoreboard objectives add gssen_out dummy
scoreboard objectives add gssen_var dummy
scoreboard objectives add gssen_const dummy

scoreboard players set $maxint gssen_const 2147483647
scoreboard players set $minint gssen_const -2147483648
