execute unless score @s fb_speed matches 1..10000 run scoreboard players operation @s fb_speed = #fireball_speed_milliblocks_per_tick fb_config
scoreboard players add @s fb_fireball_distance 0
scoreboard players add @s fb_dist_rem 0

data remove storage firebally:flight origin
execute if data entity @s data.firebally.previous run data modify storage firebally:flight origin set from entity @s data.firebally.previous
execute if data storage firebally:flight origin unless score @s fb_fireball_distance matches 2147483647 run function firebally:fireball/flight/distance
data modify entity @s data.firebally.previous set from entity @s Pos
function firebally:fireball/flight/power
function firebally:fireball/flight/speed