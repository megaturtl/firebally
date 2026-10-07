scoreboard players set #config_valid fb_tmp 1
execute unless score #config_cooldown fb_tmp matches 0..3600 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_start_delay fb_tmp matches 0..3600 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_power fb_tmp matches 1..127 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_ramp_distance fb_tmp matches 1..1600 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_speed fb_tmp matches 1..10000 run scoreboard players set #config_valid fb_tmp 0