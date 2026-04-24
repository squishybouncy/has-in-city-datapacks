scoreboard players set countdown_sec has_system -1
execute if score timer has_setting matches 1 run scoreboard players set timer_sec has_system 300
execute if score timer has_setting matches 2 run scoreboard players set timer_sec has_system 600
execute if score timer has_setting matches 3 run scoreboard players set timer_sec has_system 900

give @a[team=has_seeker] minecraft:netherite_sword
give @a[team=has_hider] minecraft:carrot_on_a_stick[minecraft:custom_data={reveal_seeker:1b},minecraft:custom_name={text:"Reveal Seeker (5s)",color:"yellow"}] 1
give @a[team=has_seeker] minecraft:carrot_on_a_stick[minecraft:custom_data={jump_boost:1b},minecraft:custom_name={text:"Jump Boost (3s)",color:"green"}] 1


title @a title {"text":"Seeker has been released!","color":"red","bold":true}