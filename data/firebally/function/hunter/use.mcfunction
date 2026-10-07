# Cancel launch if player isn't a hunter, game isn't active, or player didnt right click the custom fireball item
execute unless score #running fb_game matches 1 run return 0
execute unless entity @s[team=hunters] run return 0
execute unless items entity @s weapon.* carrot_on_a_stick[custom_data~{firebally:1b}] run return 0

# If hunters find a way to store/stockpile fireballs this stops them bypassing their actual timer cooldowns
execute unless score @s fb_timer matches ..0 run return 0

# liftofffff
execute at @s run function firebally:fireball/launch

# Remove the fireball item given earlier in the tick to prevent immediately getting a fireball back
# (this is because the fireball give logic runs first in the tick, and sees a hunter without a fireball and with no cooldown)
clear @s carrot_on_a_stick[custom_data~{firebally:1b}]

# Restart the hunter's cooldown
scoreboard players operation @s fb_timer = #fireball_cooldown_seconds fb_config
scoreboard players operation @s fb_timer *= #ticks_per_second fb_config