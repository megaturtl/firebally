# Fireball cooldown after deaths and launches
execute unless score #fireball_cooldown_seconds fb_config matches 0..600 run scoreboard players set #fireball_cooldown_seconds fb_config 60

# Initial hunter delay when game starts
execute unless score #game_start_delay_seconds fb_config matches 0..600 run scoreboard players set #game_start_delay_seconds fb_config 30

# Maximum fireball power (1 to 127)
execute unless score #fireball_power fb_config matches 1..127 run scoreboard players set #fireball_power fb_config 100

# Distance before max power in chunks (0 disables ramping)
execute unless score #fireball_power_ramp_distance_chunks fb_config matches 0..10 run scoreboard players set #fireball_power_ramp_distance_chunks fb_config 6

# Fireball speed in blocks per second
execute unless score #fireball_speed_blocks_per_second fb_config matches 1..200 run scoreboard players set #fireball_speed_blocks_per_second fb_config 20

# Game options default to enabled without overwriting saved choices
execute unless score #show_hunter_cooldown fb_config matches 0..1 run scoreboard players set #show_hunter_cooldown fb_config 1
execute unless score #apply_start_effects fb_config matches 0..1 run scoreboard players set #apply_start_effects fb_config 1
execute unless score #protect_last_interactor fb_config matches 0..1 run scoreboard players set #protect_last_interactor fb_config 1

execute if score #show_hunter_cooldown fb_config matches 1 run scoreboard objectives setdisplay list fb_countdown
execute unless score #show_hunter_cooldown fb_config matches 1 run scoreboard objectives setdisplay list

# Runtime constants and values derived from the saved settings
scoreboard players set #ticks_per_second fb_config 20
scoreboard players set #milliblocks_per_chunk fb_config 16000
# 1 block/second = 50 milliblocks/tick at 20 ticks/second
scoreboard players set #speed_scale fb_config 50
scoreboard players set #microunits_per_milliblock fb_config 1000
scoreboard players set #two fb_config 2
scoreboard players operation #fireball_power_ramp_distance_milliblocks fb_config = #fireball_power_ramp_distance_chunks fb_config
scoreboard players operation #fireball_power_ramp_distance_milliblocks fb_config *= #milliblocks_per_chunk fb_config
scoreboard players operation #fireball_speed_milliblocks_per_tick fb_config = #fireball_speed_blocks_per_second fb_config
scoreboard players operation #fireball_speed_milliblocks_per_tick fb_config *= #speed_scale fb_config
scoreboard players operation #fireball_power_levels fb_config = #fireball_power fb_config
scoreboard players remove #fireball_power_levels fb_config 1
scoreboard players set #fireball_initial_power fb_config 1
execute if score #fireball_power_ramp_distance_chunks fb_config matches 0 run scoreboard players operation #fireball_initial_power fb_config = #fireball_power fb_config