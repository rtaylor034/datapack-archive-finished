
function realm:tracking/findplayer
execute if entity @a[tag=found,nbt={DeathTime:1s}] run function realm:deathchest/spawnchest
tag @a[tag=found] remove found



