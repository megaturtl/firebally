MC Version: 26.1

Use `/team join hunters <player>` to set hunters, then `/function firebally:start` to start the game.
Only hunters receive fireballs while the game is running. Use `/function firebally:stop` to remove them when the game ends.


Config customisation can be done in `data/firebally/function/config.mcfunction` (timers, explosion power, and fireball speed) Reload the datapack after changing any values.

Each hunter has a separate countdown shown in their action bar for when they will get their next fireball.
The initial timer is 60 seconds. After firing or on respawn it's 90 seconds. Blindness and slowness is also given to hunters during the initial timer.