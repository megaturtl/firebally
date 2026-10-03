MC Version: 26.1

Use `/team join hunters <player>` to set hunters, then `/function firebally:start` to start the game.
Only hunters receive fireballs while the game is running. Use `/function firebally:stop` to remove them when the game ends.

The player who launches a fireball (or most recently hits it) gets resistance 255 while that fireball exists.

Config customisation can be done in `data/firebally/function/config.mcfunction` (timers, maximum explosion power, fireball speed, and power ramp distance) Reload the datapack after changing any values.

Each hunter has a separate countdown shown in their action bar for when they will get their next fireball.
Fireballs start at power 1 and reach the configured max power after travelling the configured distance. They are also removed at the upper build limit.