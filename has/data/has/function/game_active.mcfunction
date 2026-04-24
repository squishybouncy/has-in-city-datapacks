execute unless entity @a[team=has_hider] run function has:seeker_wins
execute as @a[team=has_hider] if score @s deaths matches 1.. run team join has_seeker @s
execute as @a[team=has_hider] if score @s deaths matches 1.. run scoreboard players set @s deaths 0