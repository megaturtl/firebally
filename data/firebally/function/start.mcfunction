# Start the game and begin each hunter's release delay
scoreboard players set #running fb_game 1

# Reset existing game state
function firebally:fireball/clear
scoreboard players reset @a fb_deaths
execute as @a run function firebally:protection/equip

# Give every hunter an independent release timer
execute as @a[team=hunters] run scoreboard players operation @s fb_timer = #game_start_delay_seconds fb_config
execute as @a[team=hunters] run scoreboard players operation @s fb_timer *= #ticks_per_second fb_config

# Give hunters start effects (function macros need the configured seconds to be put in command storage)
execute store result storage firebally:runtime start_delay_seconds int 1 run scoreboard players get #game_start_delay_seconds fb_config
function firebally:start_effects with storage firebally:runtime

tellraw @a [{"text":"Hunters released in ","color":"red"},{"score":{"name":"#game_start_delay_seconds","objective":"fb_config"}},{"text":" seconds!","color":"red"}]