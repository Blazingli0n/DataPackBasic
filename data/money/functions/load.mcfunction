scoreboard objectives add money_helper dummy
scoreboard objectives add money dummy {"text":"Money","color":"yellow"}
scoreboard objectives add money_rank dummy {"text":"Money Rank","color":"gold"}
scoreboard players set #hundred money_helper 100
scoreboard players set #ten money_helper 10
scoreboard players set #limit money_helper 10
scoreboard players set #min money_helper -2000000000
scoreboard players set #rank money_helper 0
scoreboard players set #max money_helper 0
scoreboard players set #dollars money_helper 0
scoreboard players set #cents money_helper 0
scoreboard players set #debug money_helper 0
scoreboard players set #self_balance money_helper 0
scoreboard players set #self_rank money_helper 0
data modify storage money:board lines set value []
data modify storage money:board text set value {"text":"Money Leaderboard","color":"gold","bold":true}
tag @a remove money.lb_selected
tag @a remove money.max_candidate
