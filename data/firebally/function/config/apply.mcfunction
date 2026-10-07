# Minecraft parses every expanded macro command before any settings are changed
$scoreboard players set #config_cooldown fb_tmp $(cooldown)
$scoreboard players set #config_power fb_tmp $(power)
$scoreboard players set #config_ramp_distance fb_tmp $(ramp_distance)
$scoreboard players set #config_speed fb_tmp $(speed)
$scoreboard players set #config_start_delay fb_tmp $(start_delay)
$scoreboard players set #config_show_hunter_cooldown fb_tmp $(show_hunter_cooldown)
$scoreboard players set #config_apply_start_effects fb_tmp $(apply_start_effects)
$scoreboard players set #config_protect_last_interactor fb_tmp $(protect_last_interactor)

function firebally:config/validate
execute if score #config_valid fb_tmp matches 0 run tellraw @s {"text":"Config not saved. Valid inputs are: delays: 0-600 seconds; power: 1-127; distance: 0-10 chunks; speed: 1-200 blocks/second; game options: 0 or 1. Use whole numbers.","color":"red"}
execute if score #config_valid fb_tmp matches 0 run return 0

function firebally:config/save
tellraw @s {"text":"Config saved!","color":"green"}