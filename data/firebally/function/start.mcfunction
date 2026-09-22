# start the game and begin each hunter's initial delay
scoreboard players set #running fb_game 1

# remove fireballs and death counters from existing games
clear @a carrot_on_a_stick[custom_data~{firebally:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{firebally:1b}}}}]
scoreboard players reset @a fb_deaths

# give every hunter an independent initial timer
execute as @a[team=hunters] run scoreboard players operation @s fb_timer = #initial_fireball_delay_seconds fb_config
execute as @a[team=hunters] run scoreboard players operation @s fb_timer *= #ticks_per_second fb_config

# give the hunters start effects (function macros need the configured seconds to be put in command storage)
execute store result storage firebally:runtime initial_effect_seconds int 1 run scoreboard players get #initial_fireball_delay_seconds fb_config
function firebally:apply_start_effects with storage firebally:runtime

# game start message
tellraw @a [{"text":"Hunters released in ","color":"red"},{"score":{"name":"#initial_fireball_delay_seconds","objective":"fb_config"}},{"text":" seconds!","color":"red"}]