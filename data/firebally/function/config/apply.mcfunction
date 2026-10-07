# Minecraft parses every expanded macro command before any settings are changed
$scoreboard players set #config_cooldown fb_tmp $(cooldown)
$scoreboard players set #config_power fb_tmp $(power)
$scoreboard players set #config_ramp_distance fb_tmp $(ramp_distance)
$scoreboard players set #config_speed fb_tmp $(speed)
$scoreboard players set #config_start_delay fb_tmp $(start_delay)

function firebally:config/validate
execute if score #config_valid fb_tmp matches 0 run tellraw @s {"text":"Config not saved. Valid inputs are: delays: 0-3600; power: 1-127; distance: 1-1600; speed: 1-10000. Use whole numbers.","color":"red"}
execute if score #config_valid fb_tmp matches 0 run return 0

function firebally:config/save
tellraw @s {"text":"Config saved!","color":"green"}