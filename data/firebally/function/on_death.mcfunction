# stops keep inventory from preserving fireball items on death
clear @s carrot_on_a_stick[custom_data~{firebally:1b}]
scoreboard players operation @s fb_timer = #respawn_fireball_delay_seconds fb_config
scoreboard players operation @s fb_timer *= #ticks_per_second fb_config