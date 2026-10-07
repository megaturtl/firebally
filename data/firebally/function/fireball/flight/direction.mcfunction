# Facing the origin reverses direction, so sample along negative local Z
$execute anchored feet positioned 0.0 0.0 0.0 if entity @s[distance=0.00001..] at @s facing 0.0 0.0 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^-$(speed)
data modify storage firebally:flight motion set from entity @s Pos
kill @s