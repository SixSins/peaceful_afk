# store position diffs
execute store result score @s pafk_x2 run data get entity @s Pos[0] 100
execute store result score @s pafk_y2 run data get entity @s Pos[1] 100
execute store result score @s pafk_z2 run data get entity @s Pos[2] 100

# is position diffs have changed, reset counter
execute unless score @s pafk_x2 = @s pafk_x1 run scoreboard players set @s pafk_still 0
execute unless score @s pafk_y2 = @s pafk_y1 run scoreboard players set @s pafk_still 0
execute unless score @s pafk_z2 = @s pafk_z1 run scoreboard players set @s pafk_still 0

# if counter is above configured amount, change to afk
execute if score @s pafk_still >= #pafk_still pafk_still run team join pafk_afk @s

# store position diffs for next second
execute store result score @s pafk_x1 run data get entity @s Pos[0] 100
execute store result score @s pafk_y1 run data get entity @s Pos[1] 100
execute store result score @s pafk_z1 run data get entity @s Pos[2] 100
