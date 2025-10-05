scoreboard players set @s money 12650
scoreboard players reset @s money_rank
tag @s remove money.debug_demo
tellraw @s ["",{"text":"[Money Debug]","color":"gold"},{"text":" Assigned you $126.50 (12650 cents) for demo purposes.","color":"yellow"}]
