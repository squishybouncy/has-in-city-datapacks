# Called when it's time to shrink - picks the right target size based on border setting
title @a title {"text":"World Border is shrinking in half!","color":"yellow","bold":true}

execute if score border has_setting matches 1 run worldborder set 50 30s
execute if score border has_setting matches 2 run worldborder set 75 30s
execute if score border has_setting matches 3 run worldborder set 100 30s
