# Keep saved settings when the datapack reloads.

# Delay for receiving a fireball when the game is started
execute unless score #initial_fireball_delay_seconds fb_config matches 0.. run scoreboard players set #initial_fireball_delay_seconds fb_config 60

# Delay for receiving a fireball after a hunter respawns
execute unless score #respawn_fireball_delay_seconds fb_config matches 0.. run scoreboard players set #respawn_fireball_delay_seconds fb_config 60

# Delay for receiving a new fireball after a hunter uses theirs
execute unless score #regular_fireball_delay_seconds fb_config matches 0.. run scoreboard players set #regular_fireball_delay_seconds fb_config 60

# Maximum fireball power (1 to 127)
execute unless score #fireball_power fb_config matches 1.. run scoreboard players set #fireball_power fb_config 100

# Distance a fireball needs to go to reach max power
execute unless score #fireball_power_ramp_distance_blocks fb_config matches 1.. run scoreboard players set #fireball_power_ramp_distance_blocks fb_config 100

# Fireball speed (1000 is 1 block per tick)
execute unless score #fireball_speed_milliblocks_per_tick fb_config matches 1.. run scoreboard players set #fireball_speed_milliblocks_per_tick fb_config 500

# DO NOT TOUCH!
scoreboard players set #ticks_per_second fb_config 20
scoreboard players set #milliblocks_per_block fb_config 1000
scoreboard players operation #fireball_power_ramp_distance_milliblocks fb_config = #fireball_power_ramp_distance_blocks fb_config
scoreboard players operation #fireball_power_ramp_distance_milliblocks fb_config *= #milliblocks_per_block fb_config