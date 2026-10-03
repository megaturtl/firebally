# round the remaining tick count up to a whole second and show this in the hunter's action bar (if above 0)
scoreboard players operation @s fb_countdown = @s fb_timer
scoreboard players add @s fb_countdown 19
scoreboard players operation @s fb_countdown /= #ticks_per_second fb_config
execute if score @s fb_timer matches 1.. run title @s actionbar [{"text":"Fireball in ","color":"red"},{"score":{"name":"@s","objective":"fb_countdown"}},{"text":"s","color":"red"}]