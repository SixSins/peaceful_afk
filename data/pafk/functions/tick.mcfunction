scoreboard players add pafk_tick pafk_tick 1

execute if score pafk_tick pafk_tick matches 1 run function pafk:second
execute if score pafk_tick pafk_tick matches 21 run function pafk:second
execute if score pafk_tick pafk_tick matches 41 run function pafk:second
execute if score pafk_tick pafk_tick matches 61 run function pafk:second
execute if score pafk_tick pafk_tick matches 81 run function pafk:second

execute if score pafk_tick pafk_tick matches 100.. run scoreboard players set pafk_tick pafk_tick 0
