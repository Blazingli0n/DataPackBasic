execute unless entity @a[tag=!money.lb_selected] run return 1
scoreboard players add #rank money_helper 1
execute if score #rank money_helper > #limit money_helper run return 1
scoreboard players set #max money_helper -2000000000
tag @a remove money.max_candidate
execute as @a[tag=!money.lb_selected] run function money:lb/compare
execute if score #max money_helper matches -2000000000 run return 1
execute as @a[tag=money.max_candidate,limit=1,sort=arbitrary] run function money:lb/assign_rank
function money:lb/rank_loop
