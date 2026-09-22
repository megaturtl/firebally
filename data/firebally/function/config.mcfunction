# Delay for receiving a fireball when the game is started
scoreboard players set #initial_fireball_delay_seconds fb_config 60

# Delay for receiving a fireball after a hunter respawns
scoreboard players set #respawn_fireball_delay_seconds fb_config 90

# Delay for receiving a new fireball after a hunter uses theirs
scoreboard players set #regular_fireball_delay_seconds fb_config 90

# Fireball power (0 to 127)
scoreboard players set #fireball_power fb_config 100

# Fireball speed (1000 is 1 block per tick)
scoreboard players set #fireball_speed_milliblocks_per_tick fb_config 1000



# DO NOT TOUCH!
scoreboard players set #ticks_per_second fb_config 20