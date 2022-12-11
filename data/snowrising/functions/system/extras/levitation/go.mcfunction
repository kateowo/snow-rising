# SNOWRISING quick levitation
## when player uses carrot on a stick


# announce
title @s actionbar {"text":"You used Quick Levitation!","color":"#9FFFFF"}
# sfx
playsound minecraft:block.glass.break player @s
# particles
particle minecraft:block minecraft:packed_ice ~ ~1 ~ 0 0.2 0 0.07 10

# effects
effect give @s levitation 3 4 true

# clear item
clear @s minecraft:carrot_on_a_stick 1

scoreboard players reset @s item.levitation