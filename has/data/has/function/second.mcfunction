scoreboard players add second has_system 1
execute if score second has_system matches 60 run function has:minute

execute if score countdown_sec has_system matches 1.. run scoreboard players remove countdown_sec has_system 1
execute if score countdown_sec has_system matches 1.. run title @a actionbar [{"text":"Seeker releases in ","color":"red","bold":true},{"score":{"name":"countdown_sec","objective":"has_system"}}]
execute if score countdown_sec has_system matches 0 run function has:release

execute if score timer_sec has_system matches 1.. run scoreboard players remove timer_sec has_system 1
execute if score timer_sec has_system matches 1.. run title @a actionbar [{"text":"Round ends in ","color":"yellow","bold":true},{"score":{"name":"timer_sec","objective":"has_system"}}]

execute if score shrink has_setting matches 1 run function has:shrink

execute if score timer_sec has_system < 30 has_value run effect give @a[team=has_hider] minecraft:slowness 2 0 true

execute as @a[scores={cd_jump_boost=1..}] run scoreboard players remove @s cd_jump_boost 1
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{jump_boost:1b}}}}] run title @s actionbar [{"text":"Cooldown: "},{"score":{"name":"@s","objective":"cd_jump_boost"}}]

execute if score timer_sec has_system matches 0 run function has:hider_wins