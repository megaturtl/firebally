# launch when an active hunter right clicks the custom fireball item
execute unless score #running fb_game matches 1 run return 0
execute unless entity @s[team=hunters] run return 0
execute unless items entity @s weapon.* carrot_on_a_stick[custom_data~{firebally:1b}] run return 0
execute at @s run function firebally:launch

# remove the fireball item given earlier in the tick to prevent immediately getting a fireball back
# (this is because the fireball give logic runs first in the tick, and sees a hunter without a fireball and with no cooldown)
clear @s carrot_on_a_stick[custom_data~{firebally:1b}]

# restart the hunter's timer
scoreboard players operation @s fb_timer = #regular_fireball_delay_seconds fb_config
scoreboard players operation @s fb_timer *= #ticks_per_second fb_config