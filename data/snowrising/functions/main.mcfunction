# SNOWRISING main loop


# setup
execute as @a unless score setup internal matches 1.. run function snowrising:setup/go
execute if score period internal matches -1 run title @a actionbar ["",{"text":"Configure the game using ","color":"yellow"},{"text":"/trigger setup","color":"gold"},{"text":" before the games begin!","color":"yellow"}]
## /trigger setup
scoreboard players enable @a setup
execute if score period internal matches -1 as @a if score @s setup matches 1.. run function snowrising:setup/go
execute unless score period internal matches -1 as @a if score @s setup matches 1.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"X","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Setup flow can only be opened before the game has started.","color":"red"}]
execute as @a if score @s setup matches 1.. run scoreboard players reset @s setup

# world
bossbar set snowrising:main players @a

# ensure player is not stuck
execute if score period internal matches -1 as @a at @s unless block ~ ~1 ~ #snowrising:safe run tp @s ~ ~5 ~

# options
execute if score cut_clean global matches 1.. run function snowrising:extras/cut_clean
execute if score speed_uhc global matches 1.. run function snowrising:extras/speed_uhc
execute if score speed_uhc global matches 1.. if score patch_grindstone_exploit global matches 1.. run function snowrising:extras/grindstone

# periods range checks
## starter period
execute unless score starter_period global matches 10.. run scoreboard players set starter_period global 10
## grace period
execute unless score grace_period global matches 400.. run scoreboard players set grace_period global 1200
## rise height limit
execute if score legacy global matches 1.. if score rise_height_limit global matches 257.. run function snowrising:setup/range/rise_height_limit

# apply slowness near the riser
execute if score period internal matches 2 if score slow_nearby_players global matches 1.. as @a[gamemode=!spectator] at @s run function snowrising:system/extras/nearby_players
# apply effects if in powder snow
execute if score period internal matches 2 as @a[gamemode=!spectator] at @s if block ~ ~ ~ powder_snow run effect give @s minecraft:wither 1 3 true

# custom items
## slowball
execute as @a[tag=!slowball_invulnerable] at @s run function snowrising:system/extras/slowball/main
execute as @e[type=snowball] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 blue_ice replace #snowrising:slowball_replace
execute as @e[type=snowball] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 campfire[lit=false] replace campfire[lit=true]
## ice skates
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots"},{Slot:100b}]}] at @s if block ~ ~-1 ~ minecraft:powder_snow run effect give @s speed 1 1 true
## candy canes
execute as @a if score @s item.candy_cane matches 1.. at @s run function snowrising:system/extras/candy_cane/go

# add passive snow
execute if score passive_snow global matches 1.. as @a at @s run particle minecraft:white_ash ~ ~ ~ 15 5 15 0.1 300
execute if score passive_snow global matches 1.. as @a at @s run particle minecraft:white_ash ~ ~ ~ 15 5 15 0.4 200

# riser main
execute if score period internal matches 2 as @e[tag=riser,limit=1] at @s run function snowrising:system/riser/main

# time loop
function snowrising:time

# death checks
## solos
execute if score period internal matches 2 unless score teams global matches 1.. as @a at @s if score @s player.death matches 1.. run function snowrising:system/death/solos/go
## teams
execute if score period internal matches 2 if score teams global matches 1.. as @a[team=red] at @s if score @s player.death matches 1.. run function snowrising:system/death/teams/go_red
execute if score period internal matches 2 if score teams global matches 1.. as @a[team=blue] at @s if score @s player.death matches 1.. run function snowrising:system/death/teams/go_blue
execute if score period internal matches 2 if score teams global matches 1.. as @a[team=green] at @s if score @s player.death matches 1.. run function snowrising:system/death/teams/go_green
## reset
execute unless score period internal matches 2 run scoreboard players reset @a player.death

# win checks
## solos
execute if score period internal matches 2 unless score teams global matches 1.. run function snowrising:system/win/solos/check
## teams
execute if score period internal matches 2 if score teams global matches 1.. if score teams_count global matches ..2 run function snowrising:system/win/teams-2/check
execute if score period internal matches 2 if score teams global matches 1.. if score teams_count global matches 3.. run function snowrising:system/win/teams-3/check

# disconnect checks
## disabled for now
execute if score eliminate_on_disconnect global matches 1.. run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"X","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"This feature is disabled for now and not available.","color":"red"}]
execute if score eliminate_on_disconnect global matches 1.. run scoreboard players set eliminate_on_disconnect global 0
## refer to 'eliminate_on_disconnect' in defaults
execute if score period internal matches 2 if score eliminate_on_disconnect global matches 1.. if entity @a[scores={player.leave=1..}] run function snowrising:system/death/disconnect