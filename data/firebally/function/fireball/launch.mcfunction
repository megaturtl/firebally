data modify storage firebally:flight launcher set from entity @s UUID
execute store result storage firebally:flight speed double 0.00099999 run scoreboard players get #fireball_speed_milliblocks_per_tick fb_config
execute positioned 0.0 0.0 0.0 anchored feet positioned ^ ^ ^1 summon marker run function firebally:fireball/flight/direction with storage firebally:flight
execute anchored eyes positioned ^ ^ ^1.5 summon fireball run function firebally:fireball/flight/init

playsound minecraft:entity.ghast.shoot hostile @a ~ ~ ~ 12