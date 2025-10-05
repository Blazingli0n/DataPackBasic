execute unless entity @e[type=minecraft:text_display,tag=money.leaderboard,limit=1] run summon minecraft:text_display ~ ~2 ~ {Tags:["money.leaderboard"],billboard:"vertical",alignment:"left",background:0,shadow:1b,line_width:200}
execute as @e[type=minecraft:text_display,tag=money.leaderboard,limit=1] run data merge entity @s {billboard:"vertical",alignment:"left",background:0,shadow:1b,line_width:200}
function money:lb/update
