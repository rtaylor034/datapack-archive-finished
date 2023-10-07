#> gssen : api/text > parse
#--------------------
# -> text : dynamic jsonText
#--------------------
# <<< text : fixed jsonText
#--------------------
#> parses/evaluates dynamic json <text> to fixed json >text<
#--------------------
#- example: '{"score":{"name":"$example","objective":"gssen_var"}}'' would become: '{"text":"42"}'
#- <text> should not include context-dependent selectors (ex: @s, @a[distance=..1], etc.)
#--------------------

execute at @e[type=marker,tag=gssen-freeblock] run function gssen:internal/text/signparse

#RESET
data remove storage gssen:in parse
