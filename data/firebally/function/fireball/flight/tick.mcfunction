# Retain travel up to the largest allowed ramp, not the current ramp, for live config changes
data modify storage firebally:flight origin set from entity @s data.firebally.previous
execute unless score @s fb_fireball_distance matches 160000 run function firebally:fireball/flight/distance
data modify entity @s data.firebally.previous set from entity @s Pos
function firebally:fireball/flight/power
function firebally:fireball/flight/speed