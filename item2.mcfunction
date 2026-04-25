effect clear @a
execute as @a run team join has_intermission @s

scoreboard players set active has_system 0
scoreboard players set countdown_sec has_system -1
scoreboard players set timer_sec has_system -1
scoreboard players set second has_system 0

scoreboard players set @a useItem 0
scoreboard players set @a useItemLast 0
scoreboard players set @a deaths 0
scoreboard players set @a cd_jump_boost 0
