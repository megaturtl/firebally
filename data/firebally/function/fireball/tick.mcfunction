# Remove fireball items dropped on death and clear held items outside a game
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".firebally run kill @s
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".firebally_protection run kill @s
execute unless score #running fb_game matches 1 run clear @a carrot_on_a_stick[custom_data~{firebally:1b}]

function firebally:fireball/kill_above_build_height
execute as @e[type=fireball,tag=fb_fireball] at @s run function firebally:fireball/flight/tick