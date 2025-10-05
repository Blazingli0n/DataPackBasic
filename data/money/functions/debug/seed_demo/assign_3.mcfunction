scoreboard players set @s money 4325
scoreboard players reset @s money_rank
tag @s remove money.debug_demo
tellraw @s ["",{"text":"[Money Debug]","color":"gold"},{"text":" Assigned you $43.25 (4325 cents) for demo purposes.","color":"yellow"}]
