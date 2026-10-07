function firebally:protection/tick
execute if score #running fb_game matches 1 as @a[team=hunters] run function firebally:hunter/tick
function firebally:fireball/tick
function firebally:hunter/handle_uses
function firebally:hunter/update_held_effect