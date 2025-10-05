data modify storage money:board text set value {"text":"Money Leaderboard","color":"gold","bold":true,"extra":[]}
function money:lb/apply_text_lines
execute as @e[type=minecraft:text_display,tag=money.leaderboard] run data modify entity @s text set from storage money:board text
