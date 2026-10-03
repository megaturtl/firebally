# track flight distance from the configured initial speed (in milliblocks)
scoreboard players operation @s fb_fireball_distance += #fireball_speed_milliblocks_per_tick fb_config

# stay at configured max power once the fireball has travelled the configured distance
execute if score @s fb_fireball_distance >= #fireball_power_ramp_distance_milliblocks fb_config run scoreboard players operation @s fb_fireball_power = #fireball_power fb_config

# scale power linearly from 1 to the configured max
execute unless score @s fb_fireball_distance >= #fireball_power_ramp_distance_milliblocks fb_config run scoreboard players operation @s fb_fireball_power = #fireball_power fb_config
execute unless score @s fb_fireball_distance >= #fireball_power_ramp_distance_milliblocks fb_config run scoreboard players remove @s fb_fireball_power 1
execute unless score @s fb_fireball_distance >= #fireball_power_ramp_distance_milliblocks fb_config run scoreboard players operation @s fb_fireball_power *= @s fb_fireball_distance
execute unless score @s fb_fireball_distance >= #fireball_power_ramp_distance_milliblocks fb_config run scoreboard players operation @s fb_fireball_power /= #fireball_power_ramp_distance_milliblocks fb_config
execute unless score @s fb_fireball_distance >= #fireball_power_ramp_distance_milliblocks fb_config run scoreboard players add @s fb_fireball_power 1

execute store result entity @s ExplosionPower byte 1 run scoreboard players get @s fb_fireball_power