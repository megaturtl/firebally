data modify storage firebally:flight x set from entity @s Motion[0]
data modify storage firebally:flight y set from entity @s Motion[1]
data modify storage firebally:flight z set from entity @s Motion[2]
# Keep a small margin below Minecraft's saved motion limit
execute store result storage firebally:flight speed double 0.00099999 run scoreboard players get @s fb_speed
function firebally:fireball/flight/normalize with storage firebally:flight
data modify entity @s Motion set from storage firebally:flight motion
# Acceleration = speed / 19 compensates for native air drag
execute store result entity @s acceleration_power double 0.0000526316 run scoreboard players get @s fb_speed