## Description
This repository is an archive for datapacks that I am no longer working on but are in a "finished" state, meaning that they are stable enough to be downloaded and used by someone other than me.
This does not necessarily mean that they are ready or meant for public use, just that they perform their function properly and cleanly.

Packs here vary in quality, not only becuase of differences in intended usage but also the difference in my own skill when a given pack was made.

The "documentation" provided by this README is not fully comprehensive, I do not actually expect these packs to be publicly used.
*Packs that are meant for public use will have their own repository.*

**All packs are meant for Minecraft 1.19 unless otherwise stated**

Packs
======
## Death Boxes v1
**namespace: 'realm'**
*(Even though this namespace is is bad, I will not be changing it due to its archived status)*

This pack has a [youtube video](https://youtu.be/PvYTfHrL38M)

## Death Boxes v2
**namespace: 'gdeathboxes'**

Very similar to 'Death Boxes v1' except for the following differences:
- Death Box is represented by an Ender Chest item entity instead of a glass block.
  - This means that Death Boxes can move via water, pistons, hoppers, etc.
  - Death Boxes cannot be destroyed by lava/explosions by default. (This behavior can be changed through [pack controls](Packs/Death%20Boxes%20v2/data/gdeathboxes/functions/controls/setdefaults.mcfunction))
- Instead of opening immediately, Death Boxes can be stored in inventory space, and only open when held in hand.
- Death Boxes emit particles only seen by their owner. (This can also be changed through [pack controls](Packs/Death%20Boxes%20v2/data/gdeathboxes/functions/controls/setdefaults.mcfunction))
- Better and cleaner implementation in general.

## Gssentials
**namespace: 'gssen'**

A simple library pack that provides common math and array operations.
Documentation is provided in each functions respective gssen/functions/api/... path.

Despite being in the "finished" archive, this pack is not finished, but it is a dependency of some finished packs.

## Hard Mobs v1
**namespace: 'bmobs'**

Changes a handful of common hostile mobs with intent to make combat more interesting and difficult.
This is the one of the more fleshed out packs in this list.

### Zombie
- Increased health.
- Can always break doors.
- Greatly increased knockback resistance.
- Gains temporary speed, resistance, and strength when hit.
- Will call for reinforcement zombies if provoked and not killed quickly.

### Skeleton
- Greatly increased movement speed.
- Greatly increased aggro range.
- Greatly increased fire rate.
- Slightly reduced health.
- Will intentionally keep distance from the player, jumping backward with every arrow fired.

### Spider
- Greatly increased attack damage.
- Increased movement speed.
- Slightly reduced health.
- Will leap at the player to engage.
- Spawns in packs of three.

### Creeper
- Very low health.
- *Incredibly* fast.
- Increased aggro range.
- Will explode much sooner after primed.

### Enderman
*Enderman were already pretty strong and unique, so only a small change*
- will always teleport to attack from another angle when hit, leaving an endermite in its place.

### Slime
- Very resistant to explosions, projectiles, and knockback.
- temporarily slows and weakens nearby players when hit.
- Slimes of the same size will merge into a bigger slime if given enough time.

### Husk
- Extremely high health.
- Completely invulnerable to knockback.
- Slightly increased attack damage.
- When on sand:
  - Gains resistance.
  - Nearby players are slowed, weakened, and unable to jump.

### Drowned
- Greatly increased aggro range.
- Increased attack damage.
- Slightly increased knockback resistance.
- Slighty increased health.
- Is able to lunge while in water.

### Ghast
- Greatly increased aggro range.
- Greatly increased knockback resistance.
- Slightly increased health.
- Fireballs are more powerful, and acccelerate toward their destination. (This makes them very difficult to be hit back)

### Blaze
- Spawns with three 'shield' charges.
  - Indicated by a rotating flame particle around the blaze.
  - Absorbs one instance of damage that would have damaged the blaze.
  - Regenerates 5 seconds after all three have been broken.
- Fireballs are more powerful.
- Slightly increased health.

### Wither Skeleton
- Increased health.
- Increased movement speed.
- Increased aggro range.
- Always spawns with full armor, a sword, and a bow.
- Will switch between using a bow and sword based on distance to the player.
- Has a chance to drop a 'Nether Helm'.

## Loggr
**namespace: 'loggr'**

A very simple logging api for datapack development/overseeing.
Has its own (unfinished) [readme.txt](Packs/Loggr/data/loggr/functions/readme.txt)

All logs made by this api are stored in the front of the nbt storage array `loggr:data -> logs`.
This array has a default soft 'capacity' of 10000 (can be changed via [settings](Packs/Loggr/data/loggr/functions/settings.mcfunction), and will delete from the back of the array to match this capacity every 5 seconds.


A player can set their `loggr_listento` score to listen to logs with a log level greather than or equal to it, recieving real-time chat messages.