# copy the fireball entity owner's uuid (vanilla transfers ownership when a player hits it)
execute if data entity @s Owner run data modify storage firebally:runtime fireball_owner set from entity @s Owner
execute if data entity @s Owner run function firebally:apply_owner_resistance with storage firebally:runtime