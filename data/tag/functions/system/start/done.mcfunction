# LASERTAG start
## if eligible
## when countdown has ended


# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Let the games begin!","color":"yellow"}]
title @a title {"text":"GO!","color":"green"}
# sfx
execute as @a at @s run playsound entity.arrow.hit_player player @s


scoreboard players set period internal 1