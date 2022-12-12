# SNOWRISING /reload


scoreboard objectives add global dummy
scoreboard objectives add internal dummy
scoreboard objectives add last_login dummy

# track UUIDS
scoreboard objectives add entity.UUID0 dummy
scoreboard objectives add entity.UUID1 dummy
scoreboard objectives add entity.UUID2 dummy
scoreboard objectives add entity.UUID3 dummy

# slowball timer
scoreboard objectives add slowball_time dummy

# candy canes
scoreboard objectives add item.candy_cane minecraft.used:minecraft.dried_kelp

# ice platform
scoreboard objectives add item.ice_platform minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add ice_platform_time dummy

# quick levitation
scoreboard objectives add item.levitation minecraft.used:minecraft.carrot_on_a_stick

# open setup
scoreboard objectives add setup trigger "Open setup"

# toggle snow
scoreboard objectives add snow trigger "Toggle passive snow"
scoreboard objectives add snow_temp dummy

# numbers
scoreboard players set 1 internal 1
scoreboard players set 2 internal 2

# bossbar
bossbar add snowrising:main ""
bossbar set snowrising:main color red

# track player location
scoreboard objectives add player.near_border dummy
## x
scoreboard objectives add player.x dummy
## y
scoreboard objectives add player.y dummy
## z
scoreboard objectives add player.z dummy

# track player y
## used for nearby_players calc
scoreboard objectives add player.height dummy

# track player death
scoreboard objectives add player.death deathCount

# track player leave
scoreboard objectives add player.leave minecraft.custom:minecraft.leave_game

# create riser
summon minecraft:armor_stand 0 -64 0 {Tags:["riser"],Invisible:1b,Marker:1b,Small:1b}

# teams
## red
team add red
team modify red color red
## blue
team add blue
team modify blue color blue
## green
team add green
team modify green color green


# load defaults
execute unless score defaults internal matches 1.. run function snowrising:defaults