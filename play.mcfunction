# Shrink border at the halfway point of the game
# timer 1 = 300s -> halfway at 150s | timer 2 = 600s -> halfway at 300s | timer 3 = 900s -> halfway at 450s
# border 1 = 100 -> shrinks to 50 | border 2 = 200 -> shrinks to 75 | border 3 = 300 -> shrinks to 100

execute if score timer has_setting matches 1 if score timer_sec has_system matches 150 run function has:shrink_border
execute if score timer has_setting matches 2 if score timer_sec has_system matches 300 run function has:shrink_border
execute if score timer has_setting matches 3 if score timer_sec has_system matches 450 run function has:shrink_border
