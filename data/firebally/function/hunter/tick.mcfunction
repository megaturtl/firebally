# Init personal state for hunters who join during an active game
scoreboard players add @s fb_timer 0

# Run death logic
execute if score @s fb_deaths matches 1.. run function firebally:hunter/death
scoreboard players reset @s fb_deaths

# Each hunter's timer runs independently
execute if score @s fb_timer matches 1.. run scoreboard players remove @s fb_timer 1

# Round up so the countdown reaches zero only when the fireball is ready
scoreboard players operation @s fb_countdown = @s fb_timer
scoreboard players add @s fb_countdown 19
scoreboard players operation @s fb_countdown /= #ticks_per_second fb_config
execute if score @s fb_timer matches 1.. run title @s actionbar [{"text":"Fireball in ","color":"red"},{"score":{"name":"@s","objective":"fb_countdown"}},{"text":"s","color":"red"}]
execute if score @s fb_timer matches ..0 run function firebally:hunter/give