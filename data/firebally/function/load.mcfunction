# Count all carrot on a stick uses (the `on_use` function later checks specifically for the custom fireball item)
scoreboard objectives add fb_carrot_uses minecraft.used:minecraft.carrot_on_a_stick

# Shared scratch arithmetic for flight and configuration
scoreboard objectives add fb_tmp dummy

# Per-fireball cumulative travel and launch-time speed
scoreboard objectives add fb_fireball_distance dummy
scoreboard objectives add fb_speed dummy
scoreboard objectives add fb_dist_rem dummy

# Stable player ids for fireball ownership checks
scoreboard objectives add fb_player_id dummy
scoreboard players add #next fb_player_id 0

# Game lifecycle, timers, and delay config
scoreboard objectives add fb_game dummy
scoreboard objectives add fb_config dummy
scoreboard objectives add fb_timer dummy
scoreboard objectives add fb_countdown dummy
scoreboard objectives add fb_deaths minecraft.custom:minecraft.deaths
function firebally:config/init

# Show fireball cooldown in tablist
scoreboard objectives setdisplay list fb_countdown

# Create the hunter team (/team join hunters <player>)
team add hunters
team modify hunters color red