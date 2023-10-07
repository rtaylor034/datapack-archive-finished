
#SETS DEFAULT CONTROLS



#CONTROLS
#"lockDuration" is how long boxes stay locked after death (in seconds).
#"despawnTime" is how long boxes take to despawn after being unlocked (in seconds).
#"invincible" specifies if the box item can be destroyed by lava/explosions/etc.
#"showParticles" specifies whether or not players see indicator particles next to their respective boxes
#"openOnDespawn" specifies if a box opens on despawn, or simply disappears. (If 0, the box will disappear on despawn, leaving no items)
#"captureXP" specifies if boxes capture the players XP or not. (If 0, XP orbs will not be captured in boxes, and be able to be picked up immediatly after death)
data modify storage gdeathboxes:controls main set value {}
data modify storage gdeathboxes:controls main.box set value {lockDuration:60,invincible:1,despawnTime:600,showParticles:1,openOnDespawn:0,captureXP:1}

#"chatInfo" is whether or not info about a players death is displayed in chat.
data modify storage gdeathboxes:controls main.player set value {chatInfo:1}
