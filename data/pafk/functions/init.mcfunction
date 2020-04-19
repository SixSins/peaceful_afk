team add pafk_afk

scoreboard objectives add pafk_tick dummy
scoreboard objectives add pafk_still dummy
scoreboard objectives add pafk_install dummy

scoreboard objectives add pafk_x1 dummy
scoreboard objectives add pafk_y1 dummy
scoreboard objectives add pafk_z1 dummy
scoreboard objectives add pafk_x2 dummy
scoreboard objectives add pafk_y2 dummy
scoreboard objectives add pafk_z2 dummy

# default amount of seconds to be considered afk is 30
execute unless score #pafk_install pafk_install matches 1 run scoreboard players set #pafk_still pafk_still 30

# default team color is gray
execute unless score #pafk_install pafk_install matches 1 run team modify pafk_afk color gray

# default collision rule is that afk players and nearby mobs do not collide with anyone else
execute unless score #pafk_install pafk_install matches 1 run team modify pafk_afk collisionRule never

# scoreboard to allow checking to see if this is first time install
scoreboard players set #pafk_install pafk_install 1
