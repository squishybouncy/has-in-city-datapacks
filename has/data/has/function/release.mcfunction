scoreboard players set countdown_sec has_system -1
execute if score timer has_setting matches 1 run scoreboard players set timer_sec has_system 300
execute if score timer has_setting matches 2 run scoreboard players set timer_sec has_system 600
execute if score timer has_setting matches 3 run scoreboard players set timer_sec has_system 900

title @a title {"text":"Seeker has been released!","color":"red","bold":true}