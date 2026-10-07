execute if score #running fb_game matches 1 if score #protect_last_interactor fb_config matches 1 as @a run function firebally:protection/equip
execute unless score #running fb_game matches 1 as @a run function firebally:protection/clear
execute if score #running fb_game matches 1 unless score #protect_last_interactor fb_config matches 1 as @a run function firebally:protection/clear