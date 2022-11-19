# SNOWRISING slowball hit
## run by player who got hit


# revoke advancements
advancement revoke @s only snowrising:slowball

# announce
title @s actionbar {"text":"You got hit by a Slowball!","color":"#9FFFFF"}
# sfx
playsound minecraft:block.powder_snow.hit player @s
playsound minecraft:entity.player.hurt player @s ~ ~ ~ 80 0.6

# give effect
effect give @s slowness 5 1 true