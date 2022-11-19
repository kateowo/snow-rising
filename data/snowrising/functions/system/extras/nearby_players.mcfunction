# SNOWRISING performance
## nearby players


# store position of falling blocks
execute store result score @s player.height run data get entity @s Pos[1]

# calculate distance from riser
## move down 2 blocks
scoreboard players operation @s player.height -= slow_nearby_players_distance global

# nearby? then effect
## if player (-2y) end up <= the riser's current height
## they will be automatically given effects
execute if score @s player.height <= riser_height internal run effect give @s slowness 0 1 true