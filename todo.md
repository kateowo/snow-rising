# todo

```
#9FFFFF
```

## main
- [x] copy over lava rising
  - [x] replace 'lava' references with 'powdered_snow'
  - [x] replace 'lava'-esc sfx
  - [x] use more snow(ier)/christmas colours and things

- [x] give player slowness if certain blocks away from snow? (`slow_nearby_distance`)
  - ^ i don't think you can trigger the powdered snow effect manually
  - will trial it out

## QOL
- [ ] double food drops?
- [ ] add some sort of snow food?

## extras
- [x] add custom items (like water rising)
  - ensure these items are encouraged, went basically unused in water rising
  - [x] ![](https://res.plexion.dev/minecraft/item/snowball.png) slowball
    - [x] slows down any player it hits
    - can make 'Snow' drop some crafting item for other items (like the prismarine shard in WR)
    - combine ^ with iron or smth to get regular snowball (slowball)
  - [x] ![](https://res.plexion.dev/minecraft/item/iron_boots.png) ice skates
    - work same as leather boots default
    - [x] gives speed to allow you to "skate" across the snow
    - [ ] slowly lose durability?
  - [x] ![](https://res.plexion.dev/minecraft/item/ice.png) ice platform
    - [x] use to create a small ice platform below you
    - only lasts for a short amount of time
    - duel tnt style
    - [x] crafting recipe
    - [x] refer to **todo** in `system/ice_platform/go`!!!!
  - [x] ![](https://res.plexion.dev/minecraft/item/splash_potion.png) quick levitation
    - [x] gives the player fast accelerating levitation
    - requires them to build to negate fall damage or die
    - (therefore not *too* overpowered)
  - [x] ![](https://res.plexion.dev/minecraft/item/stick.png) candy canes
    - [x] replaces dried kelp
    - [x] dropped from loot table of grass (along with snow)
    - [x] gives temp speed + absorption

- [x] add bundled resource pack?
  - would be my first datapack to do this
  - allows for greater flexibility
  - [x] style custom items (+naming)
  - [x] make it christmas-themed ❄
  - [x] re-texture wither hearts to frozen hearts

## from beta test
- [x] add lava rising to #illegal blocks
- [x] add additional effects when in powder snow (you can survive to bedrock rn)
- [x] `player.height` is not currently being set
- [x] setup flow still says "lava rising"

- [x] replace nearby water with packed ice potentially