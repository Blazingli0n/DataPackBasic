tellraw @s ["",{"text":"[Money Debug]","color":"gold","bold":true},{"text":" Clearing demo balances...","color":"yellow"}]
execute unless entity @a[tag=money.debug_demo_recent] run tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"No players are marked with demo balances. Run /function money:debug/seed_demo first.","color":"red"}]
execute unless entity @a[tag=money.debug_demo_recent] run return 1
scoreboard players reset @a[tag=money.debug_demo_recent] money
scoreboard players reset @a[tag=money.debug_demo_recent] money_rank
tag @a[tag=money.debug_demo_recent] remove money.lb_selected
tag @a[tag=money.debug_demo_recent] remove money.max_candidate
tag @a remove money.debug_demo_recent
function money:lb/update
tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"Demo balances cleared. All affected players now have no money score.","color":"gray"}]
