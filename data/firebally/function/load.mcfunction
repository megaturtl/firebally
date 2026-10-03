# counts each carrot on a stick use, the on_use function checks if this was the custom fireball item
scoreboard objectives add fb_carrot_uses minecraft.used:minecraft.carrot_on_a_stick

# for aiming math in launch.mcfunction
scoreboard objectives add fb_tmp dummy

# per-fireball distance and current power tracking
scoreboard objectives add fb_fireball_distance dummy
scoreboard objectives add fb_fireball_power dummy

# game lifecycle, timers, and delay config
scoreboard objectives add fb_game dummy
scoreboard objectives add fb_config dummy
scoreboard objectives add fb_timer dummy
scoreboard objectives add fb_countdown dummy
scoreboard objectives add fb_deaths minecraft.custom:minecraft.deaths
function firebally:config

# show fireball cooldown in tablist
scoreboard objectives setdisplay list fb_countdown

# /team join hunters <player>
team add hunters
team modify hunters color red