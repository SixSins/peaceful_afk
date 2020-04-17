# AFK Peaceful

A Minecraft datapack for 1.15. Hostile mobs won't attack players who are afk.

## How it works

Mobs who are on the same scoreboard team as players won't attack them. 

This pack works by adding afk players onto a team, and then adding any nearby mobs onto that same team. When a player moves, he is removed from the afk team, in addition to any nearby mobs.

The phrasing "nearby" means within 25 blocks of the player, except for the following mobs, which are considered long-ranged and are joined within 110 blocks of the player:

* Blazes
* Ghasts
* Shulkers

## Installation

Download this datapack as a zip file. Place it into the `datapacks` folder inside of your save folder. Run `/reload` or reload the world for the datapack to take effect.

On Realms, you'll need to download your world in order to install, and then upload it after you copy the datapack over.

## Configuration

By default, a player is considered afk if his position in the world hasn't changed in at least 30 seconds. This can be changed using the following command:

```mcfunction
scoreboard players set #pafk_still pafk_still $new_value
```

where `$new_value` is replaced with the number of seconds the player should be idle.

## Uninstall

To uninstall, run this command:

```mcfunction
function pafk:uninstall
```

After this, remove the datapack from your datapacks folder. To complete the uninstallation, run `/reload` or reload your world.

If you are uninstalling lots of packs at once, this pack also uninstalls with the `#main:uninstall` tag, like most of the Vanilla Tweaks packs.

## Notes

* This datapack is not compatible with the AFK Display pack on Vanilla Tweaks (the one used by Hermitcraft). Do not use them together.
* This datapack will not function with other datapacks that place players on teams.
* This datapack is for Java only. Bedrock doesn't have datapacks.
