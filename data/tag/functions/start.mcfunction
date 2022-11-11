# LASERTAG start


scoreboard players set can_start internal 0
scoreboard players set can_start_players internal 0
scoreboard players set can_start_period internal 0

# player check
## TODO: implement player checks later on
## for now, just auto-bypass check
scoreboard players set can_start_players internal 1
execute unless score can_start_players internal matches 1.. run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"⓪","color":"red"},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, at least 2 players required.","color":"red"}]
# period check
execute if score period internal matches -1 run scoreboard players set can_start_period internal 1
execute unless score can_start_period internal matches 1.. run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"⓪","color":"red"},{"text":"] ","color":"dark_gray"},{"text":"Cannot start, a game is already in progress.","color":"red"}]

execute if score can_start_players internal matches 1.. if score can_start_period internal matches 1.. run scoreboard players set can_start internal 1

# can start?
## yes, proceed to main start
execute if score can_start internal matches 1.. run function tag:system/start/go
## no, ineligible
execute unless score can_start internal matches 1.. run playsound minecraft:block.note_block.bass player @a