# Fireball cooldown after deaths and launches
execute unless score #fireball_cooldown_seconds fb_config matches 0..3600 run scoreboard players set #fireball_cooldown_seconds fb_config 60

# Initial hunter delay when game starts
execute unless score #game_start_delay_seconds fb_config matches 0..3600 run scoreboard players set #game_start_delay_seconds fb_config 30

# Maximum fireball power (1 to 127)
execute unless score #fireball_power fb_config matches 1..127 run scoreboard players set #fireball_power fb_config 100

# Distance a fireball needs to go to reach max power (1 to 1600 blocks)
execute unless score #fireball_power_ramp_distance_blocks fb_config matches 1..1600 run scoreboard players set #fireball_power_ramp_distance_blocks fb_config 100

# Fireball speed (1 to 10000, 1000 is 1 block per tick)
execute unless score #fireball_speed_milliblocks_per_tick fb_config matches 1..10000 run scoreboard players set #fireball_speed_milliblocks_per_tick fb_config 1000

# DO NOT TOUCH!
scoreboard players set #ticks_per_second fb_config 20
scoreboard players set #milliblocks_per_block fb_config 1000
scoreboard players set #microunits_per_milliblock fb_config 1000
scoreboard players set #two fb_config 2
scoreboard players operation #fireball_power_ramp_distance_milliblocks fb_config = #fireball_power_ramp_distance_blocks fb_config
scoreboard players operation #fireball_power_ramp_distance_milliblocks fb_config *= #milliblocks_per_block fb_config