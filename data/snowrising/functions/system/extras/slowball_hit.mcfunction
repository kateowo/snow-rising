# SNOWRISING slowball hit
## run by player who got hit


# revoke advancements
advancement revoke @s only snowrising:slowball

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"#9FFFFF","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You got hit by a Slowball!","color":"#9FFFFF"}]
# sfx
playsound minecraft:block.powder_snow.hit player @s

# give effect
effect give @s slowness 5 1 true