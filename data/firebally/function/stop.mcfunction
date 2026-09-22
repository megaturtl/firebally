# stop the game and remove all existing fireball items and entities
scoreboard players set #running fb_game 0
scoreboard players reset @a fb_timer
clear @a carrot_on_a_stick[custom_data~{firebally:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{firebally:1b}}}}]