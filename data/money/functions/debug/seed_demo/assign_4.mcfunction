scoreboard players set @s money 2875
scoreboard players reset @s money_rank
tag @s remove money.debug_demo
tellraw @s ["",{"text":"[Money Debug]","color":"gold"},{"text":" Assigned you $28.75 (2875 cents) for demo purposes.","color":"yellow"}]
