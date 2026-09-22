# gives the fireball item to hunters if they don't have one
execute if items entity @s container.* carrot_on_a_stick[custom_data~{firebally:1b}] run return 0
execute if items entity @s weapon.offhand carrot_on_a_stick[custom_data~{firebally:1b}] run return 0
give @s carrot_on_a_stick[custom_data={firebally:1b},item_model="minecraft:fire_charge",custom_name={text:"firebally",color:"red",italic:false},consumable={consume_seconds:0.0f,animation:"none",has_consume_particles:false}]