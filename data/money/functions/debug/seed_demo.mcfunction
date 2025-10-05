tellraw @s ["",{"text":"[Money Debug]","color":"gold","bold":true},{"text":" Seeding demo balances for online players...","color":"yellow"}]
execute unless entity @a run tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"No players detected. Join the world as a player before running this.","color":"red"}]
execute unless entity @a run return 1
tag @a remove money.debug_demo
tag @a remove money.debug_demo_recent
tag @a add money.debug_demo
tag @a[tag=money.debug_demo] add money.debug_demo_recent
scoreboard players set @a[tag=money.debug_demo] money 0
scoreboard players reset @a[tag=money.debug_demo] money_rank
execute as @a[tag=money.debug_demo,sort=nearest,limit=1] run function money:debug/seed_demo/assign_1
execute as @a[tag=money.debug_demo,sort=nearest,limit=1] run function money:debug/seed_demo/assign_2
execute as @a[tag=money.debug_demo,sort=nearest,limit=1] run function money:debug/seed_demo/assign_3
execute as @a[tag=money.debug_demo,sort=nearest,limit=1] run function money:debug/seed_demo/assign_4
execute as @a[tag=money.debug_demo,sort=nearest,limit=1] run function money:debug/seed_demo/assign_5
tag @a remove money.debug_demo
function money:lb/update
tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"Demo balances assigned. Run /function money:debug/report to inspect the leaderboard.","color":"gray"}]
