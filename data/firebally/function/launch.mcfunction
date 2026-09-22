# summon 1.5 blocks in front of the eyes
execute anchored eyes run summon fireball ^ ^ ^1.5 {Tags:["fb_new"]}
execute store result entity @e[type=fireball,tag=fb_new,limit=1] ExplosionPower byte 1 run scoreboard players get #fireball_power fb_config

# marker 1 block further to track look direction
execute anchored eyes run summon marker ^ ^ ^2.5 {Tags:["fb_ahead"]}

# marker pos - fireball pos = look direction
# scaling by 1000 to store as integers with 3 dp precision
execute store result score #x fb_tmp run data get entity @e[type=marker,tag=fb_ahead,limit=1] Pos[0] 1000
execute store result score #y fb_tmp run data get entity @e[type=marker,tag=fb_ahead,limit=1] Pos[1] 1000
execute store result score #z fb_tmp run data get entity @e[type=marker,tag=fb_ahead,limit=1] Pos[2] 1000
execute store result score #fx fb_tmp run data get entity @e[type=fireball,tag=fb_new,limit=1] Pos[0] 1000
execute store result score #fy fb_tmp run data get entity @e[type=fireball,tag=fb_new,limit=1] Pos[1] 1000
execute store result score #fz fb_tmp run data get entity @e[type=fireball,tag=fb_new,limit=1] Pos[2] 1000
scoreboard players operation #x fb_tmp -= #fx fb_tmp
scoreboard players operation #y fb_tmp -= #fy fb_tmp
scoreboard players operation #z fb_tmp -= #fz fb_tmp

# direction is scaled by 1000
# applies config speed before converting back to blocks per tick motion values
scoreboard players operation #x fb_tmp *= #fireball_speed_milliblocks_per_tick fb_config
scoreboard players operation #y fb_tmp *= #fireball_speed_milliblocks_per_tick fb_config
scoreboard players operation #z fb_tmp *= #fireball_speed_milliblocks_per_tick fb_config
execute store result entity @e[type=fireball,tag=fb_new,limit=1] Motion[0] double 0.000001 run scoreboard players get #x fb_tmp
execute store result entity @e[type=fireball,tag=fb_new,limit=1] Motion[1] double 0.000001 run scoreboard players get #y fb_tmp
execute store result entity @e[type=fireball,tag=fb_new,limit=1] Motion[2] double 0.000001 run scoreboard players get #z fb_tmp

# remove markers
kill @e[type=marker,tag=fb_ahead]
tag @e[type=fireball,tag=fb_new] remove fb_new

playsound minecraft:entity.ghast.shoot hostile @a ~ ~ ~ 2