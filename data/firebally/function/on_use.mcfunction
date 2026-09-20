# executes launch if a player right clicks carrot on a stick while holding the custom fireball
execute unless items entity @s weapon.* carrot_on_a_stick[custom_data~{firebally:1b}] run return 0
execute at @s run function firebally:launch