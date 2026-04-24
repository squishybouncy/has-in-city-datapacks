function has:reset

team empty has_hider
team empty has_seeker
team empty has_spectator
team empty has_intermission

execute as @r run team join has_seeker @s
execute as @a[team=!has_seeker] run team join has_hider @s

tellraw @a {"text": "Game started!", "color": "green", "bold": true}

execute if score countdown has_setting matches 1 run effect give @a[team=has_seeker] minecraft:blindness 60 1 true
execute if score countdown has_setting matches 1 run effect give @a[team=has_seeker] minecraft:slowness 60 255 true
execute if score countdown has_setting matches 1 run scoreboard players set countdown_sec has_system 60

execute if score countdown has_setting matches 2 run effect give @a[team=has_seeker] minecraft:blindness 90 1 true
execute if score countdown has_setting matches 2 run effect give @a[team=has_seeker] minecraft:slowness 90 255 true
execute if score countdown has_setting matches 2 run scoreboard players set countdown_sec has_system 90

execute if score countdown has_setting matches 3 run effect give @a[team=has_seeker] minecraft:blindness 120 1 true
execute if score countdown has_setting matches 3 run effect give @a[team=has_seeker] minecraft:slowness 120 255 true
execute if score countdown has_setting matches 3 run scoreboard players set countdown_sec has_system 120

execute if score border has_setting matches 1 run worldborder set 100
execute if score border has_setting matches 2 run worldborder set 150
execute if score border has_setting matches 3 run worldborder set 200

effect give @a minecraft:regeneration 1 255 true

scoreboard players set active has_system 1