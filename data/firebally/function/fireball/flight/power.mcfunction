execute if score @s fb_fireball_distance >= #fireball_power_ramp_distance_milliblocks fb_config store result entity @s ExplosionPower byte 1 run scoreboard players get #fireball_power fb_config
execute if score @s fb_fireball_distance >= #fireball_power_ramp_distance_milliblocks fb_config run return 0

scoreboard players operation #power fb_tmp = @s fb_fireball_distance
scoreboard players operation #power fb_tmp *= #fireball_power_levels fb_config
scoreboard players operation #power fb_tmp /= #fireball_power_ramp_distance_milliblocks fb_config
scoreboard players add #power fb_tmp 1
execute store result entity @s ExplosionPower byte 1 run scoreboard players get #power fb_tmp