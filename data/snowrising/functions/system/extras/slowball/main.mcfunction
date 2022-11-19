# SNOWRISING slowball main
## ran as player


# get player UUID
## have to store in 4 separate scoreboards
execute store result score @s entity.UUID0 run data get entity @s UUID[0]
execute store result score @s entity.UUID1 run data get entity @s UUID[1]
execute store result score @s entity.UUID2 run data get entity @s UUID[2]
execute store result score @s entity.UUID3 run data get entity @s UUID[3]

# get snowball owner
## have to store in 4 separate scoreboards
execute store result score @e[type=snowball,limit=1,distance=..4,sort=nearest] entity.UUID0 run data get entity @e[type=snowball,limit=1,distance=..4,sort=nearest] Owner[0]
execute store result score @e[type=snowball,limit=1,distance=..4,sort=nearest] entity.UUID1 run data get entity @e[type=snowball,limit=1,distance=..4,sort=nearest] Owner[1]
execute store result score @e[type=snowball,limit=1,distance=..4,sort=nearest] entity.UUID2 run data get entity @e[type=snowball,limit=1,distance=..4,sort=nearest] Owner[2]
execute store result score @e[type=snowball,limit=1,distance=..4,sort=nearest] entity.UUID3 run data get entity @e[type=snowball,limit=1,distance=..4,sort=nearest] Owner[3]

# compare
## loop through each scoreboard
execute unless score @s entity.UUID0 = @e[type=snowball,limit=1,distance=..4,sort=nearest] entity.UUID0 unless score @s entity.UUID1 = @e[type=snowball,limit=1,distance=..4,sort=nearest] entity.UUID1 unless score @s entity.UUID2 = @e[type=snowball,limit=1,distance=..4,sort=nearest] entity.UUID2 unless score @s entity.UUID3 = @e[type=snowball,limit=1,distance=..4,sort=nearest] entity.UUID3 run function snowrising:system/extras/slowball/hit