# Keep ids across games so old projectiles cannot refer to a different player
execute unless score @s fb_player_id matches 1.. store result score @s fb_player_id run scoreboard players add #next fb_player_id 1

# Remove temp boots if the player already has an armour piece which can get the enchantment
execute if items entity @s armor.feet chainmail_boots[custom_data~{firebally_protection:1b}] if items entity @s armor.head * run item replace entity @s armor.feet with air
execute if items entity @s armor.feet chainmail_boots[custom_data~{firebally_protection:1b}] if items entity @s armor.chest * run item replace entity @s armor.feet with air
execute if items entity @s armor.feet chainmail_boots[custom_data~{firebally_protection:1b}] if items entity @s armor.legs * run item replace entity @s armor.feet with air
execute unless items entity @s armor.feet chainmail_boots[custom_data~{firebally_protection:1b}] run clear @s chainmail_boots[custom_data~{firebally_protection:1b}]

# Don't supply an asset_id so the temp boots shouldn't show in game on the player model (still shows in inventory)
execute unless items entity @s armor.* * run item replace entity @s armor.feet with chainmail_boots[custom_data={firebally_protection:1b},attribute_modifiers=[],equippable={slot:"feet",damage_on_hurt:false},enchantments={"firebally:owner_protection":1},enchantment_glint_override=false,item_name={text:"Fireball Protection"},tooltip_display={hidden_components:["minecraft:enchantments","minecraft:attribute_modifiers"]}]

execute if items entity @s armor.head * unless items entity @s armor.head *[enchantments~[{enchantments:"firebally:owner_protection"}]] run item modify entity @s armor.head firebally:owner_protection
execute if items entity @s armor.chest * unless items entity @s armor.chest *[enchantments~[{enchantments:"firebally:owner_protection"}]] run item modify entity @s armor.chest firebally:owner_protection
execute if items entity @s armor.legs * unless items entity @s armor.legs *[enchantments~[{enchantments:"firebally:owner_protection"}]] run item modify entity @s armor.legs firebally:owner_protection
execute if items entity @s armor.feet * unless items entity @s armor.feet *[enchantments~[{enchantments:"firebally:owner_protection"}]] run item modify entity @s armor.feet firebally:owner_protection