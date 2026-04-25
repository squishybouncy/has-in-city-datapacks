execute unless entity @a[team=has_hider] run function has:seeker_wins
execute as @a[team=has_hider] if score @s deaths matches 1.. run function has:assign_seeker