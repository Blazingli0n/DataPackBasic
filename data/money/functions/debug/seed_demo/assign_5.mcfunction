scoreboard players set @s money 975
scoreboard players reset @s money_rank
tag @s remove money.debug_demo
tellraw @s ["",{"text":"[Money Debug]","color":"gold"},{"text":" Assigned you $9.75 (975 cents) for demo purposes.","color":"yellow"}]
