# SNOWRISING toggle snow
## /trigger snow


execute if entity @s[tag=disable_snow] run tag @s remove disable_snow
execute if entity @s[tag=!disable_snow] run tag @s add disable_snow