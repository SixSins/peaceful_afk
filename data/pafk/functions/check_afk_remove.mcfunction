# store position diffs
execute store result score @s pafk_x2 run data get entity @s Pos[0] 100
execute store result score @s pafk_y2 run data get entity @s Pos[1] 100
execute store result score @s pafk_z2 run data get entity @s Pos[2] 100

# player leaves afk team if they have moved
execute unless score @s pafk_x2 = @s pafk_x1 run function pafk:afk_remove
execute unless score @s pafk_y2 = @s pafk_y1 run function pafk:afk_remove
execute unless score @s pafk_z2 = @s pafk_z1 run function pafk:afk_remove

# store position diffs for next second
execute store result score @s pafk_x1 run data get entity @s Pos[0] 100
execute store result score @s pafk_y1 run data get entity @s Pos[1] 100
execute store result score @s pafk_z1 run data get entity @s Pos[2] 100

scoreboard players set @s pafk_still 0
