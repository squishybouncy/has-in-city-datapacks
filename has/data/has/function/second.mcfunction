execute if score countdown_sec has_system matches 1.. run scoreboard players remove countdown_sec has_system 1
execute if score countdown_sec has_system matches 1.. run title @a actionbar [{"text":"Seeker releases in ","color":"red","bold":true},{"score":{"name":"countdown_sec","objective":"has_system"}}]
execute if score countdown_sec has_system matches 0 run function has:release

execute if score timer_sec has_system matches 1.. run scoreboard players remove timer_sec has_system 1
execute if score timer_sec has_system matches 1.. run title @a actionbar [{"text":"Round ends in ","color":"yellow","bold":true},{"score":{"name":"timer_sec","objective":"has_system"}}]

execute if score timer has_setting matches 1 if score timer_sec has_system matches 150..150 run title @a title {"text":"World Border is shrinking in half!","color":"yellow","bold":true}
execute if score timer has_setting matches 1 if score timer_sec has_system matches 150..150 run worldborder set 50 30s
execute if score timer has_setting matches 2 if score timer_sec has_system matches 300..300 run title @a title {"text":"World Border is shrinking in half!","color":"yellow","bold":true}
execute if score timer has_setting matches 2 if score timer_sec has_system matches 300..300 run worldborder set 100 30s
execute if score timer has_setting matches 3 if score timer_sec has_system matches 450..450 run title @a title {"text":"World Border is shrinking in half!","color":"yellow","bold":true}
execute if score timer has_setting matches 3 if score timer_sec has_system matches 450..450 run worldborder set 150 30s

execute if score timer_sec has_system matches 0 run function has:hider_wins