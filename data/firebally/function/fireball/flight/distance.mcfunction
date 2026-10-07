# Native distance predicates keep full coordinate precision, including near the world border
data modify storage firebally:flight x set from storage firebally:flight origin[0]
data modify storage firebally:flight y set from storage firebally:flight origin[1]
data modify storage firebally:flight z set from storage firebally:flight origin[2]
scoreboard players set #low fb_tmp 0
scoreboard players set #high fb_tmp 11000000
function firebally:fireball/flight/distance_search

scoreboard players operation #travel fb_tmp = #low fb_tmp
scoreboard players operation #travel fb_tmp += @s fb_dist_rem
scoreboard players operation @s fb_dist_rem = #travel fb_tmp
scoreboard players operation @s fb_dist_rem %= #microunits_per_milliblock fb_config
scoreboard players operation #travel fb_tmp /= #microunits_per_milliblock fb_config
scoreboard players operation @s fb_fireball_distance += #travel fb_tmp
execute if score @s fb_fireball_distance matches 160000.. run scoreboard players set @s fb_fireball_distance 160000