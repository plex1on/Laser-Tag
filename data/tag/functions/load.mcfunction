# LASERTAG /reload


# create scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy

# world
gamerule naturalRegeneration false
gamerule doImmediateRespawn true

# track player hunger
scoreboard objectives add health.hunger food

# track deaths
scoreboard objectives add player.death deathCount

# score
scoreboard objectives add player.score dummy

# systems
## crossbow
## NORMAL
scoreboard objectives add crossbow_normal.time dummy
scoreboard objectives add crossbow_normal.slot dummy
scoreboard objectives add crossbow_normal.slot_temp dummy
scoreboard players set crossbow_normal.delay internal 12
scoreboard players set crossbow_normal.ammo internal 20
scoreboard players set crossbow_normal.recharge internal 40
## MACHINE
scoreboard objectives add crossbow_machine.time dummy
scoreboard objectives add crossbow_machine.slot dummy
scoreboard objectives add crossbow_machine.slot_temp dummy
scoreboard players set crossbow_machine.delay internal 1
scoreboard players set crossbow_machine.ammo internal 25
scoreboard players set crossbow_machine.recharge internal 100

## health
scoreboard objectives add health.apple minecraft.used:minecraft.apple
scoreboard objectives add health.golden_apple minecraft.used:minecraft.golden_apple