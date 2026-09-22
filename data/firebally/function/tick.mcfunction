# kill fireball items that are dropped on death
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".firebally run kill @s

# clear fireball items if the game isn't running
execute unless score #running fb_game matches 1 run clear @a carrot_on_a_stick[custom_data~{firebally:1b}]

# increment all hunter timers
execute if score #running fb_game matches 1 as @a[team=hunters] run function firebally:hunter_tick

# apply resitance for each fireball entity's current owner
execute as @e[type=fireball,tag=fb_fireball] run function firebally:protect_fireball_owner

# handle all hunters that used a carrot on a stick in this tick while the game is running
execute if score #running fb_game matches 1 as @a[team=hunters,scores={fb_carrot_uses=1..}] run function firebally:on_use

# clear the counters
scoreboard players reset @a fb_carrot_uses