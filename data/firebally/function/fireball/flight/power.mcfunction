# The 1600 block ramp cap keeps this product within scoreboard integers
scoreboard players operation #levels fb_tmp = #fireball_power fb_config
scoreboard players remove #levels fb_tmp 1
scoreboard players operation #power fb_tmp = @s fb_fireball_distance
scoreboard players operation #power fb_tmp < #fireball_power_ramp_distance_milliblocks fb_config
scoreboard players operation #power fb_tmp *= #levels fb_tmp
scoreboard players operation #power fb_tmp /= #fireball_power_ramp_distance_milliblocks fb_config
scoreboard players add #power fb_tmp 1
execute store result entity @s ExplosionPower byte 1 run scoreboard players get #power fb_tmp