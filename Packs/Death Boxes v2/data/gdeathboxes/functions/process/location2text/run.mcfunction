
#PARAMS - {@s -> Pos} | position
#OUT - [location2text.text -> gdeathboxes:out ; jsonText] | position text

execute store result score location2text.x gdb_var run data get entity @s Pos[0]
execute store result score location2text.y gdb_var run data get entity @s Pos[1]
execute store result score location2text.z gdb_var run data get entity @s Pos[2]

data modify storage slime:param parse.json set value '[{"score":{"name":"location2text.x","objective":"gdb_var"}},{"text":" "},{"score":{"name":"location2text.y","objective":"gdb_var"}},{"text":" "},{"score":{"name":"location2text.z","objective":"gdb_var"}}]'
function slime:text/parse/run
data modify storage gdeathboxes:out location2text.text set from storage slime:out parse.text



#RESETS
scoreboard players reset location2text.x var
scoreboard players reset location2text.y var
scoreboard players reset location2text.z var
