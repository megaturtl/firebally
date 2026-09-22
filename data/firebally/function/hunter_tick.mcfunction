# initialize personal state for hunters who join while a game is running
scoreboard players add @s fb_timer 0

# dying replaces any held fireball with the respawn delay
execute if score @s fb_deaths matches 1.. run function firebally:on_death
scoreboard players reset @s fb_deaths

# each hunter's timer runs independently
execute if score @s fb_timer matches 1.. run scoreboard players remove @s fb_timer 1
execute if score @s fb_timer matches 1.. run function firebally:show_timer
execute if score @s fb_timer matches ..0 run function firebally:give_fireball
