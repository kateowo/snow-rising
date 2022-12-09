# SNOWRISING toggle snow
## /trigger snow


# store temp value
execute if entity @s[tag=disable_snow] run scoreboard players set @s snow_temp 1
execute if entity @s[tag=!disable_snow] run scoreboard players reset @s snow_temp

execute if score @s snow_temp matches 1.. run tag @s remove disable_snow
execute unless score @s snow_temp matches 1.. run tag @s add disable_snow