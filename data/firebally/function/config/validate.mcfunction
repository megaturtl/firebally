scoreboard players set #config_valid fb_tmp 1
execute unless score #config_cooldown fb_tmp matches 0..600 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_start_delay fb_tmp matches 0..600 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_power fb_tmp matches 1..127 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_ramp_distance fb_tmp matches 0..10 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_speed fb_tmp matches 1..200 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_show_hunter_cooldown fb_tmp matches 0..1 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_apply_start_effects fb_tmp matches 0..1 run scoreboard players set #config_valid fb_tmp 0
execute unless score #config_protect_last_interactor fb_tmp matches 0..1 run scoreboard players set #config_valid fb_tmp 0