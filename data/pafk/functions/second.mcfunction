scoreboard players add @a[team=!pafk_afk] pafk_still 1

# add/remove players from afk team
execute as @a[team=pafk_afk] at @s run function pafk:check_afk_remove
execute as @a[team=!pafk_afk] at @s run function pafk:check_afk_add

# add/remove mobs from afk team
execute as @a[team=pafk_afk] at @s run team join pafk_afk @e[type=#pafk:hostile_normal,distance=0..25]
execute as @a[team=pafk_afk] at @s run team join pafk_afk @e[type=#pafk:hostile_longrange,distance=0..110]
