team add pafk_afk
team modify pafk_afk color gray

scoreboard objectives add pafk_tick dummy
scoreboard objectives add pafk_still dummy

scoreboard objectives add pafk_x1 dummy
scoreboard objectives add pafk_y1 dummy
scoreboard objectives add pafk_z1 dummy
scoreboard objectives add pafk_x2 dummy
scoreboard objectives add pafk_y2 dummy
scoreboard objectives add pafk_z2 dummy

# default amount of seconds to be considered afk is 30
scoreboard players set #pafk_still pafk_still 30 

scoreboard objectives add pafk_uninstall dummy
