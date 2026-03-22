tellraw @a {"text": "HAS IN CITY", "color": "green", "bold": true}
tellraw @a {"text": "<Settings>", "color": "gray", "bold": true}
tellraw @a {"text": "'timer' score: (1/2/3) - 5/10/15 mins, 100/200/300 border", "color": "gray"}
tellraw @a {"text": "'countdown' score: (1/2/3) - 1/2/3 mins", "color": "gray"}

team add has_hider Hider
team add has_seeker Seeker
team add has_spectator Spectator
team add has_intermission Intermission

team modify has_hider color blue
team modify has_seeker color red
team modify has_spectator color gray
team modify has_intermission color yellow

team modify has_hider friendlyFire false
team modify has_seeker friendlyFire false
team modify has_spectator friendlyFire false

team modify has_hider nametagVisibility hideForOtherTeams
team modify has_seeker nametagVisibility hideForOtherTeams

team modify has_hider nametagVisibility hideForOwnTeam

scoreboard objectives add has_setting dummy
scoreboard players set countdown has_setting 1
scoreboard players set timer has_setting 1
scoreboard players set border has_setting 1

scoreboard objectives add has_system dummy
scoreboard players add tick has_system 0

scoreboard objectives add deaths deathCount

gamerule keep_inventory true

function has:reset