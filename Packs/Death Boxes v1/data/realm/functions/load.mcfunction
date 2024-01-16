
#GENERAL SCOREBOARDS
scoreboard objectives add gtimer dummy

#DEATH CAPSULE
scoreboard objectives add deathChest deathCount
scoreboard objectives add chestCount dummy
scoreboard objectives add idmin dummy
scoreboard objectives add chestx dummy
scoreboard objectives add chesty dummy
scoreboard objectives add chestz dummy


#SCOREBOARDS
function realm:tracking/trackingscoreboards





#MESSAGE
tellraw @a[tag=joined3] {"color":"gray","text":"Death Capsules - Reloaded"}
