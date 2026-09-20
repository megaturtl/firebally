# detect right clicks with carrot on stick disguised as the fireball item
scoreboard objectives add fb_fireball minecraft.used:minecraft.carrot_on_a_stick

# for aiming math in launch.mcfunction
scoreboard objectives add fb_tmp dummy

# /team join hunters <player>
team add hunters
team modify hunters color red