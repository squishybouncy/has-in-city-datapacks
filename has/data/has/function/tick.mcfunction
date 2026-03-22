scoreboard players add tick has_system 1
execute if score tick has_system matches 20 run function has:second
execute if score tick has_system matches 20 run scoreboard players set tick has_system 0

execute if score active has_system matches 1 run function has:game_active

effect give @a[team=has_seeker] minecraft:resistance 1 255 true
effect give @a minecraft:fire_resistance 1 0 true
effect give @a minecraft:saturation 1 0 true

clear @a[team=!has_seeker] minecraft:netherite_sword
item replace entity @a[team=has_seeker] weapon.mainhand with minecraft:netherite_sword
item replace entity @a armor.feet with minecraft:iron_boots[enchantments={feather_falling:10}]