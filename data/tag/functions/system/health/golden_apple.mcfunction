# LASERTAG health
## golden apple


effect give @s minecraft:instant_health 1 0 true
effect give @s minecraft:regeneration 3 1 true
playsound entity.arrow.hit_player player @s
playsound block.brewing_stand.brew player @s

effect clear @s regeneration
effect clear @s absorption

scoreboard players reset @s health.golden_apple