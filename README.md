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
  - Death Boxes cannot be destroyed by lava/explosions by default. (This behavior can be changed through [pack controls](../blob/main/Packs/Death%20Boxes%20v2/data/gdeathboxes/functions/controls/setdefaults.mcfunction))
- Instead of opening immediately, Death Boxes can be stored in inventory space, and only open when held in hand.
- Death Boxes emit particles only seen by their owner. (This can also be changed through [pack controls](../blob/main/Packs/Death%20Boxes%20v2/data/gdeathboxes/functions/controls/setdefaults.mcfunction))
- Better and cleaner implementation in general.

## Gssentials
**namespace: 'gssen'**

A simple library pack that provides common math and array operations.
Documentation is provided in each functions respective gssen/functions/api/... path.

Despite being in the "finished" archive, this pack is not finished, but it is a dependency of some finished packs.

## Hard Mobs v1
**namespace: 'bmobs'**

Gives a selection of common hostile mobs special powers, intended to make them more difficult.

- **Zombie:** *"The Horde"
 - Increased health.
 - Can always break doors.
 - Greatly increased knockback resistance.
 - Will spawn reinforcement zombies *very* often.
 - Gains temporary (3s) speed, resistance, and strength when damaged.