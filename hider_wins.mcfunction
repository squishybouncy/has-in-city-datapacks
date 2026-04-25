scoreboard players set second has_system 0

# Spawn a firework at a random hider's location as a hint
execute at @r[team=has_hider] run summon firework_rocket ~ ~ ~ {LifeTime:30}
