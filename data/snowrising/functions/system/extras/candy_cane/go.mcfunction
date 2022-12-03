# SNOWRISING candy cane
## when player eats dried kelp


# announce
title @s actionbar {"text":"You ate a Candy Cane!","color":"#9FFFFF"}
# sfx
playsound minecraft:entity.arrow.hit_player player @s
# particles
particle minecraft:block minecraft:white_concrete ~ ~1 ~ 0 0.2 0 0.07 10
particle minecraft:block minecraft:red_concrete ~ ~1 ~ 0 0.2 0 0.07 10

# give effect
effect give @s strength 6 0 true
effect give @s speed 6 0 true
effect give @s absorption 6 1 true

scoreboard players reset @s item.candy_cane