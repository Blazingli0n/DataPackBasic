scoreboard players set @s money 8450
scoreboard players reset @s money_rank
tag @s remove money.debug_demo
tellraw @s ["",{"text":"[Money Debug]","color":"gold"},{"text":" Assigned you $84.50 (8450 cents) for demo purposes.","color":"yellow"}]
