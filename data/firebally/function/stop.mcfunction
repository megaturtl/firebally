# Stop the game and remove all existing fireball items, entities, and flight state
scoreboard players set #running fb_game 0
execute as @a run function firebally:protection/clear
scoreboard players reset @a fb_timer
function firebally:fireball/clear