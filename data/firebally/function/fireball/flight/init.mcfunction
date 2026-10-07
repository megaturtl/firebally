tag @s add fb_fireball
data modify entity @s Owner set from storage firebally:flight launcher
execute store result entity @s ExplosionPower byte 1 run scoreboard players get #fireball_initial_power fb_config
scoreboard players operation @s fb_speed = #fireball_speed_milliblocks_per_tick fb_config
scoreboard players set @s fb_fireball_distance 0
scoreboard players set @s fb_dist_rem 0
data modify entity @s Motion set from storage firebally:flight motion
execute store result entity @s acceleration_power double 0.0000526316 run scoreboard players get @s fb_speed
data modify entity @s data.firebally.previous set from entity @s Pos