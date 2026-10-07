# Configured flight and native deflection keep one step below 11 blocks
scoreboard players operation #mid fb_tmp = #high fb_tmp
scoreboard players operation #mid fb_tmp -= #low fb_tmp
scoreboard players operation #mid fb_tmp /= #two fb_config
scoreboard players operation #mid fb_tmp += #low fb_tmp
execute store result storage firebally:flight radius double 0.000001 run scoreboard players get #mid fb_tmp
execute store result score #outside fb_tmp run function firebally:fireball/flight/distance_probe with storage firebally:flight
execute if score #outside fb_tmp matches 1 run scoreboard players operation #low fb_tmp = #mid fb_tmp
execute if score #outside fb_tmp matches 0 run scoreboard players operation #high fb_tmp = #mid fb_tmp
scoreboard players operation #span fb_tmp = #high fb_tmp
scoreboard players operation #span fb_tmp -= #low fb_tmp
execute if score #span fb_tmp matches 2.. run function firebally:fireball/flight/distance_search