Archive Description
=====
This repository is an archive for datapacks that I am no longer working on but are in a "finished" state, meaning that they are stable enough to be downloaded and used by someone other than me.
This does not necessarily mean that they are ready or meant for public use, just that they perform their function properly and cleanly.

Packs here vary in quality and standardization, not only becuase of differences in intended usage but also the difference in my own skill when a given pack was made.

The descriptions provided by this README is not fully comprehensive, I do not actually expect these packs to be publicly used.
*Packs that are meant for public use will have their own repository.*

**All packs work with Minecraft 1.19 unless otherwise stated.**

Packs
======
## SlimeCore v1
**namespace: 'slime'**

A library pack that provides generalized implementations for common and/or useful functions.

Also provides a 'tracker' API for storing custom player NBT data and uniquely identifying players through a scoreboard objective.

Every public function is in the format `slime/functions/<category>/.../<function>/run.mcfunction`.<br>
Documentation for each function is contained within it's `run.mcfunction` file.

This pack also includes a [text file](Packs/SlimeCore%20v1/DOCS.txt) with general documentation formatting standards of the time.<br>
*NOTE: these are not complete nor are they up to date with my current standards.*

*This was my personal core library that I would use as a dependency for essentially every pack I wrote after it (see the [unfinished datapack archive](https://github.com/rtaylor034/datapack-archive-unfinished)).*

*The predecessor to [Gssentials](https://github.com/rtaylor034/datapack-archive-finished#gssentials) and [PlayerData](https://github.com/rtaylor034/datapack-archive-finished#playerdata).*

### Summary of Included Library Functions
- Array
  - `cycleto`: Finds the first element that matches given NBT and cycles the array until its at the front.
  - `getmatching`: Finds elements of an array that match given NBT.
  - `mergetoall`: Merges given NBT to all elements of an array.
  - `seperateby`: Inserts a duplicate of a given element inbetween every element of an array.
- Math
  - `mot2rot`: *Motion to Rotation.* Converts a Vector3 position to a Vector2 direction.
  - `rot2mot`: Inverse of `mot2rot`.
  - `rgb2decimal`: Converts a 0-255 Vector3 color to a decimal representation. (Only really useful for custom leather dying)
  - `random`: Generates a random number between 0 and a given value.
- Player
  - `xpbar/set`: Sets the players XP bar precicely to the given percentage and level.
- Text
  - `parse`: Parses unfriendly dynamic json text to friendly static json text. (implemented with setting/getting sign text NBT)
  - `packsignature`: Formats given text to fit a standard "signature" format. (See [GConstruct v1](https://github.com/rtaylor034/datapack-archive-unfinished#gconstruct-v1))

### Trackers
Trackers provide a method of custom player NBT data, aswell as a system to keep a unique player ID score assigned to the same player through name changes.<br>
*(very similar to [PlayerData](https://github.com/rtaylor034/datapack-archive-finished#playerdata), but utilizes marker entities instead of NBT storage to store data)*

The very first time a player joins the world, A 'tracker' marker entity is spawned and designated to them.<br>
This entity stores the following NBT data under its `data` field:
- `playerName`: The username of the player
- `UUID`: The UUID of the player

Players are also assigned a unique `slime_playerid` score for identification (that is kept through name changes)<br>
A player's designated tracker is assigned the same `slime_playerid` score as the player.

Trackers are interacted with through the `player/tracker/find/run.mcfunction` and `player/tracker/unfind/run.mcfunction` functions.

## Death Boxes v1
**namespace: 'realm'**
*(Even though this namespace is is bad, I will not be changing it due to its archived status)*

This pack has a [youtube video](https://youtu.be/PvYTfHrL38M) that I made when I was 16.

## Xp Capacitors
**namespace: 'xpcap'**

This pack also has a (this time edited) [youtube video](https://youtu.be/h6vupjO0xZU) that I made when I was 16.

## Death Boxes v2
**namespace: 'gdeathboxes'**

Very similar to 'Death Boxes v1' except for the following differences:
- Death Box is represented by an Ender Chest item entity instead of a glass block.
  - This means that Death Boxes can move via water, pistons, hoppers, etc.
  - Death Boxes cannot be destroyed by lava/explosions by default. (This behavior can be changed through [pack controls](Packs/Death%20Boxes%20v2/data/gdeathboxes/functions/controls/setdefaults.mcfunction))
- Instead of opening immediately, Death Boxes can be stored in inventory space, and only open when held in hand.
- Death Boxes emit particles only seen by their owner. (This can also be changed through [pack controls](Packs/Death%20Boxes%20v2/data/gdeathboxes/functions/controls/setdefaults.mcfunction))
- Cleaner implementation in general.

## Gssentials
**namespace: 'gssen'**

A simple library pack that provides common math and array operations.<br>
An up-to-date rewrite of (a subset of) [SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1).

Documentation is provided in each functions respective `gssen/functions/api/...` path.

Includes an [example API function](Packs/Gssentials/data/gssen/functions/api/myapifunction.mcfunction) to outline what is to be expected of documentation.<br>
*NOTE: This is more in-line with my current documentation standards as of 2023, although it does not cover everything.*

Despite being in the "finished" archive, this pack is not finished (although it is stable), but it is a dependency of some finished packs.

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

A simple logging api for datapack development/overseeing.
 Has its own (unfinished) [readme.txt](Packs/Loggr/data/loggr/functions/readme.txt)

All logs pushed to the front of nbt storage array `loggr:data -> logs`.<br>
This array has a default soft 'capacity' of 10000 (can be changed via [settings](Packs/Loggr/data/loggr/functions/settings.mcfunction)), and will delete from the back of the array to match this capacity every 5 seconds.

A player can set their `loggr_listento` score to listen to logs with a log level greather than or equal to it, recieving real-time chat messages.

## Name Colors
**namespace: 'namecolor'**

A zero-cost pack that allows players to change their name color. (Implemented using teams)

Players can run:
```/trigger namecolor set 0```
to bring up a clickable menu.

Alternatively, players can run:
```/trigger namecolor set <value>```
if the score value associated with their desired color is known.

## PlayerData
**namespace: 'pdata'**<br>
**dependencies: 'gssen' ([Gssentials](https://github.com/rtaylor034/datapack-archive-finished#gssentials))**<br>
**optionally supports: 'loggr' ([Loggr](https://github.com/rtaylor034/datapack-archive-finished#loggr))**

Provides nbt storage data as well as a score ID unique to each player.<br>
Both player data and score ID is kept consistent through player name changes. (Uses UUID matching)<br>

This is a more efficient and robust implementation of what trackers in [SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1) provided.

### Player NBT Data
The very first time a player joins the world, an entry is appended to the nbt storage array `pdata:data -> playerdata` containing:
- `name`: Their username
- `UUID`: Their UUID
- `id`: A unique (score friendly) identifier
- `storage`: A place to put custom player NBT data (initialized empty)
The `id` field is also copied to the players `pdata_playerid` score.

When a player rejoins, their UUID is searched for in `pdata:data -> playerdata` and their `username` field as well as their `pdata_playerid` score is set accordingly.

*Note: Player IDs start at 1 and increment each time a new one is assigned.*

This pack deliberately only provides what is stated above; does not provide an implementation for searching for or inserting data into the playerdata array.<br>
*These tasks can be easily performed with 'gssen'.*

## Realm Rules & Star Bow
*These packs were for personal use and would not make sense to describe/document*

# Worlds
I have yet to finish a world project.