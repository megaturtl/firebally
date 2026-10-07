clear @a carrot_on_a_stick[custom_data~{firebally:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{firebally:1b}}}}]
kill @e[type=fireball,tag=fb_fireball]
scoreboard players reset * fb_fireball_distance
scoreboard players reset * fb_speed
scoreboard players reset * fb_dist_rem