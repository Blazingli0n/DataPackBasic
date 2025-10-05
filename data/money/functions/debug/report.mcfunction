tellraw @s ["",{"text":"[Money Debug]","color":"gold","bold":true},{"text":" Running diagnostics...","color":"yellow"}]
scoreboard players set #debug money_helper 0
scoreboard players set #self_balance money_helper 0
scoreboard players set #self_rank money_helper 0
execute if entity @e[type=minecraft:text_display,tag=money.leaderboard] run tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"Leaderboard entity detected.","color":"green"}]
execute unless entity @e[type=minecraft:text_display,tag=money.leaderboard] run tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"No text_display entity with tag money.leaderboard is currently loaded.","color":"red"}]
function money:lb/update
scoreboard players operation #debug money_helper = #rank money_helper
tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"Tracked leaderboard entries: ","color":"gray"},{"score":{"name":"#rank","objective":"money_helper"},"color":"aqua"},{"text":"/","color":"gray"},{"score":{"name":"#limit","objective":"money_helper"},"color":"yellow"}]
execute if entity @s[scores={money=..}] store result score #self_balance money_helper run scoreboard players get @s money
execute if entity @s[scores={money_rank=1..}] store result score #self_rank money_helper run scoreboard players get @s money_rank
execute if entity @s[scores={money=..}] run tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"Your balance: ","color":"gray"},{"score":{"name":"#self_balance","objective":"money_helper"},"color":"yellow"},{"text":" cents","color":"gray"}]
execute unless entity @s[scores={money=..}] run tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"You do not have a money score yet. Use /scoreboard players add @s money <cents> to create one.","color":"red"}]
execute if score #self_rank money_helper matches 1.. run tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"Your current rank: ","color":"gray"},{"score":{"name":"#self_rank","objective":"money_helper"},"color":"yellow"}]
execute unless score #self_rank money_helper matches 1.. run tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"You are not currently in the tracked leaderboard range.","color":"gray"}]
tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"Leaderboard preview:","color":"gray"}]
tellraw @s [{"nbt":"text","storage":"money:board","interpret":true}]
tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"Raw storage dump (also printed to chat log):","color":"gray"}]
data get storage money:board text
data get storage money:board lines
tellraw @s ["",{"text":"• ","color":"dark_gray"},{"text":"Need more help? Run /function money:debug/help","color":"gray"}]
