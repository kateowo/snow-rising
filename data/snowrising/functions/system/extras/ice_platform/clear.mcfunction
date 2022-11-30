# SNOWRISING ice platform remove
## removes block & marker


# clear blocks
fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 air replace packed_ice

# sfx
playsound minecraft:block.glass.break player @a ~ ~ ~

# kill marker
kill @s