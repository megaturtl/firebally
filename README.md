Datapack for a MC 26.1 manhunt with high power fireballs.

## How the game works

- Hunters receive fireballs that work like bedwars fireballs (right-click to launch).
- Hunters have a separate game start delay (default 30 seconds). The normal fireball cooldown applies after launches and deaths.
- The tablist shows each hunter's countdown. `0` means their fireball is ready.
- Fireballs can be deflected, and whoever has interacted with a fireball last takes no damage from that specific fireball.
- Other damage, like fire from the explosion, will still apply.
- Fireballs gain power as they travel, up to the configured maximum (default 100). Deflection does not reset traveled distance.

The datapack adds a protection enchantment to worn equipment. Players without armour receive temporary chainmail boots with no model. This is how the fireball protection mechanic works and doesn't provide actual armour to the player. Stopping the game removes the temporary boots and protection from worn equipment.

## Commands

Run these commands as op:

| Command | Purpose |
| --- | --- |
| `/team join hunters <player>` | Assign a player as a hunter.|
| `/function firebally:config` | Set the game start delay, fireball cooldown, speed, maximum power, and distance to reach maximum power. |
| `/function firebally:start` | Start the game and the hunter release countdown. |
| `/function firebally:stop` | Stop the game and remove fireballs. |

The config dialog shows the current settings. Change only the fields you need, then select **Save**.
