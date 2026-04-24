# Reveal Seeker
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{reveal_seeker:1b}}}}] run function has:item1

# Jump Boost
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{jump_boost:1b}}}}] if score @s cd_jump_boost matches 0 run function has:item2

scoreboard players operation @s useItemLast = @s useItem