scoreboard players reset @a money_rank
scoreboard players set #rank money_helper 0
tag @a remove money.lb_selected
data modify storage money:board lines set value []
function money:lb/rank_loop
function money:lb/apply_text
