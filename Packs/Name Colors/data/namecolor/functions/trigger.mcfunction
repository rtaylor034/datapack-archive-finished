
#HELP MESSAGE
execute as @s[scores={namecolor=0}] at @s run tellraw @s ["",{"text":"1 - Aqua","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger namecolor set 1"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"2 - Black","color":"black","clickEvent":{"action":"run_command","value":"/trigger namecolor set 2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"3 - Blue","color":"blue","clickEvent":{"action":"run_command","value":"/trigger namecolor set 3"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"4 - Dark Aqua","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger namecolor set 4"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"5 - Dark Blue","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger namecolor set 5"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"6 - Dark Gray","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger namecolor set 6"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"7 - Dark Green","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger namecolor set 7"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"8 - Dark Purple","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger namecolor set 8"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"9 - Dark Red","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger namecolor set 9"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"10 - Gold","color":"gold","clickEvent":{"action":"run_command","value":"/trigger namecolor set 10"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"11 - Gray","color":"gray","clickEvent":{"action":"run_command","value":"/trigger namecolor set 11"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"12 - Green","color":"green","clickEvent":{"action":"run_command","value":"/trigger namecolor set 12"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"13 - Light Purple","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger namecolor set 13"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"14 - Red","color":"red","clickEvent":{"action":"run_command","value":"/trigger namecolor set 14"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"15 - White","color":"white","clickEvent":{"action":"run_command","value":"/trigger namecolor set 15"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}},{"text":"\n"},{"text":"16 - Yellow","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger namecolor set 16"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set color","color":"green"}]}}]

#TEAM CHANGES
execute as @s[scores={namecolor=1}] at @s run team join aqua
execute as @s[scores={namecolor=2}] at @s run team join black
execute as @s[scores={namecolor=3}] at @s run team join blue
execute as @s[scores={namecolor=4}] at @s run team join dark_aqua
execute as @s[scores={namecolor=5}] at @s run team join dark_blue
execute as @s[scores={namecolor=6}] at @s run team join dark_gray
execute as @s[scores={namecolor=7}] at @s run team join dark_green
execute as @s[scores={namecolor=8}] at @s run team join dark_purple
execute as @s[scores={namecolor=9}] at @s run team join dark_red
execute as @s[scores={namecolor=10}] at @s run team join gold
execute as @s[scores={namecolor=11}] at @s run team join gray
execute as @s[scores={namecolor=12}] at @s run team join green
execute as @s[scores={namecolor=13}] at @s run team join light_purple
execute as @s[scores={namecolor=14}] at @s run team join red
execute as @s[scores={namecolor=15}] at @s run team join white
execute as @s[scores={namecolor=16}] at @s run team join yellow

#MESSAGE
execute as @s[scores={namecolor=1..16}] at @s run tellraw @s ["",{"text":"[Name Colors] ","color":"yellow"},{"text":"Your name color has been changed!","color":"white"}]
execute as @s[scores={namecolor=17..}] at @s run tellraw @s ["",{"text":"[Name Colors] ","color":"yellow"},{"text":"There is no color associated with that number.","color":"red"}]
execute as @s[scores={namecolor=..-2}] at @s run tellraw @s ["",{"text":"[Name Colors] ","color":"yellow"},{"text":"There is no color associated with that number.","color":"red"}]

#RESET
scoreboard players set @s namecolor -1
scoreboard players enable @s namecolor
