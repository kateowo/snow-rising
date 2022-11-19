# SNOWRISING slowball hit
## run by player who got hit


# give temp tag
tag @s add slowball_invulnerable
# schedule to remove
scoreboard players reset @s slowball_time

# announce
title @s actionbar {"text":"You got hit by a Slowball!","color":"#9FFFFF"}
# sfx
playsound minecraft:block.powder_snow.hit player @s
playsound minecraft:entity.player.hurt player @s ~ ~ ~ 80 0.6
# particles
particle minecraft:snowflake ~ ~1 ~ 0 0.2 0 0.07 50
particle minecraft:block minecraft:ice ~ ~1 ~ 0 0.2 0 0.07 20

# give effect
effect give @s slowness 5 1 true