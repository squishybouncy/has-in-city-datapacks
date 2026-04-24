effect clear @a
execute as @a run team join has_intermission @s
scoreboard players set active has_system 0
scoreboard players set countdown_sec has_system -1
scoreboard players set timer_sec has_system -1

scoreboard players set @a useItem 0
scoreboard players set @a useItemLast 0

execute if score countdown has_setting matches 1 run scoreboard players set second has_system -60
execute if score countdown has_setting matches 2 run scoreboard players set second has_system -90
execute if score countdown has_setting matches 3 run scoreboard players set second has_system -120

scoreboard players set @a deaths 0
scoreboard players set @a cd_jump_boost 0