# SNOWRISING ice platform
## when player throws ender eye


# announce
title @s actionbar {"text":"You used an Ice Platform!","color":"#9FFFFF"}
# sfx
playsound minecraft:block.glass.fall player @s
playsound minecraft:block.snow.place player @s
# particles
particle minecraft:block minecraft:packed_ice ~ ~1 ~ 0 0.2 0 0.07 10

# summon platform
fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 ice

## TODO: summon marker to remove ice platform after set time

scoreboard players reset @s item.candy_cane