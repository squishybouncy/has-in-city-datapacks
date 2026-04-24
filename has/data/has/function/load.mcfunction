tellraw @a {"text": ">>> Hide and Seek in City by SquishyBouncy <<<", "color": "green", "bold": true}
tellraw @a {"text": "<Settings> /scoreboard players set 'score' has_setting 'value'", "color": "dark_gray", "bold": true}
tellraw @a {"text": "'border' (1/2/3) [Default: 1] - 100/200/300 blocks", "color": "gray"}
tellraw @a {"text": "'timer' (1/2/3) [Default: 1] - 5/10/15 mins", "color": "gray"}
tellraw @a {"text": "'countdown' (1/2/3) [Default: 1] - 1/2/3 mins", "color": "gray"}
tellraw @a {"text": "'shrink' (0/1) [Default: 0] - false/true shrinks border half game", "color": "gray"}
tellraw @a {"text": "<Functions>", "color": "dark_purple", "bold": true}
tellraw @a {"text": "'/function has:play' - Start the game", "color": "light_purple"}
tellraw @a {"text": "'/function has:end' - End the game", "color": "light_purple"}
tellraw @a {"text": "'/function has:reset' - Reset values", "color": "light_purple"}
tellraw @a {"text": "'/function has:set_border' - Set border center", "color": "light_purple"}



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
scoreboard players set shrink has_setting 0

scoreboard objectives add has_system dummy
scoreboard players add tick has_system 0

scoreboard objectives add has_value dummy
scoreboard players add 30 has_value 30

scoreboard objectives add deaths deathCount

scoreboard objectives add useItem minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add useItemLast dummy

scoreboard objectives add cd_jump_boost dummy

gamerule keep_inventory true

function has:reset