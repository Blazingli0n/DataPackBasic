execute if score @s money > #max money_helper run function money:lb/new_max
execute if score @s money = #max money_helper run tag @s add money.max_candidate
