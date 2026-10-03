# kill fireball items that are dropped on death
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".firebally run kill @s

# clear fireball items if the game isn't running
execute unless score #running fb_game matches 1 run clear @a carrot_on_a_stick[custom_data~{firebally:1b}]

# increment all hunter timers
execute if score #running fb_game matches 1 as @a[team=hunters] run function firebally:hunter_tick

# kill fireballs that go above build height
function firebally:kill_above_build_height

# ramp each fireball's explosion power up according to its flight distance
execute as @e[type=fireball,tag=fb_fireball] run function firebally:update_fireball_power

# apply resitance for each fireball entity's current owner
execute as @e[type=fireball,tag=fb_fireball] run function firebally:protect_fireball_owner

# handle all hunters that used a carrot on a stick in this tick while the game is running
execute if score #running fb_game matches 1 as @a[team=hunters,scores={fb_carrot_uses=1..}] run function firebally:on_use

# give glowing while holding the fireball
effect clear @a glowing
execute as @a if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{firebally:1b}] run effect give @s glowing 1 0 true

# clear the counters
scoreboard players reset @a fb_carrot_uses