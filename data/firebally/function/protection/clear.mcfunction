clear @s chainmail_boots[custom_data~{firebally_protection:1b}]
execute if items entity @s armor.head *[enchantments~[{enchantments:"firebally:owner_protection"}]] run item modify entity @s armor.head firebally:remove_owner_protection
execute if items entity @s armor.chest *[enchantments~[{enchantments:"firebally:owner_protection"}]] run item modify entity @s armor.chest firebally:remove_owner_protection
execute if items entity @s armor.legs *[enchantments~[{enchantments:"firebally:owner_protection"}]] run item modify entity @s armor.legs firebally:remove_owner_protection
execute if items entity @s armor.feet *[enchantments~[{enchantments:"firebally:owner_protection"}]] run item modify entity @s armor.feet firebally:remove_owner_protection