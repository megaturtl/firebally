# keep hunters supplied with a fireball
execute as @a[team=hunters] run function firebally:give_fireball
# check for right clicks
execute as @a[scores={fb_fireball=1..}] at @s run function firebally:on_use
# clear the counters
scoreboard players reset @a fb_fireball