# SNOWRISING border
## track based on player


scoreboard players set @s player.near_border 0

# save player location
execute store result score @s player.x run data get entity @s Pos[0]
execute store result score @s player.y run data get entity @s Pos[1]
execute store result score @s player.z run data get entity @s Pos[2]

# add to location
scoreboard players operation @s player.x += border_distance global
scoreboard players operation @s player.z += border_distance global

# near border?
execute if score @s player.x >= border_size internal run scoreboard players set @s player.near_border 1
execute if score @s player.z >= border_size internal run scoreboard players set @s player.near_border 1

# invalidate
## if NOT underground
execute if score @s player.y > base_world_height internal run scoreboard players set @s player.near_border 0

# announce
title @s actionbar {"text":"You are very close to the border! Watch out!","color":"red"}