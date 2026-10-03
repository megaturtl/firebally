MC Version: 26.1

Use `/team join hunters <player>` to set hunters, then `/function firebally:start` to start the game.
Only hunters receive fireballs while the game is running. Use `/function firebally:stop` to remove them when the game ends.

The player who launches a fireball (or most recently hits it) gets resistance 255 while that fireball exists.

Ops can use `/function firebally:config` to open a dialog to configure the fireball behaviour.
If a delay time is updated, the new value won't apply to active timers (only after the timer restarts due to death or fire etc.).

Each hunter has a separate countdown in the tablist. It shows `0` when their fireball is ready. The action bar shows the countdown only during the cooldown.
Fireballs start at power 1 and reach the configured max power after travelling the configured distance. They are also removed at the upper build limit.