# Minecraft parses every expanded macro command before any settings are changed.
$scoreboard players set #config_initial_delay fb_tmp $(initial_delay)
$scoreboard players set #config_respawn_delay fb_tmp $(respawn_delay)
$scoreboard players set #config_regular_delay fb_tmp $(regular_delay)
$scoreboard players set #config_power fb_tmp $(power)
$scoreboard players set #config_ramp_distance fb_tmp $(ramp_distance)
$scoreboard players set #config_speed fb_tmp $(speed)

scoreboard players set #config_valid fb_tmp 1
execute unless score #config_initial_delay fb_tmp matches 0..1000000 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_respawn_delay fb_tmp matches 0..1000000 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_regular_delay fb_tmp matches 0..1000000 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_power fb_tmp matches 1..127 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_ramp_distance fb_tmp matches 1..2147483 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_speed fb_tmp matches 1..2147483 run scoreboard players set #config_valid fb_tmp 0
execute if score #config_valid fb_tmp matches 0 run tellraw @s {"text":"Config not saved. Valid inputs are: delays: 0-1000000; power: 1-127; distance and speed: 1-2147483. Use whole numbers.","color":"red"}
execute if score #config_valid fb_tmp matches 0 run return 0

scoreboard players operation #initial_fireball_delay_seconds fb_config = #config_initial_delay fb_tmp
scoreboard players operation #respawn_fireball_delay_seconds fb_config = #config_respawn_delay fb_tmp
scoreboard players operation #regular_fireball_delay_seconds fb_config = #config_regular_delay fb_tmp
scoreboard players operation #fireball_power fb_config = #config_power fb_tmp
scoreboard players operation #fireball_power_ramp_distance_blocks fb_config = #config_ramp_distance fb_tmp
scoreboard players operation #fireball_speed_milliblocks_per_tick fb_config = #config_speed fb_tmp
function firebally:config/init
tellraw @s {"text":"Config saved!","color":"green"}