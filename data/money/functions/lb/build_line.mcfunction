scoreboard players operation #dollars money_helper = @s money
scoreboard players operation #dollars money_helper /= #hundred money_helper
scoreboard players operation #cents money_helper = @s money
scoreboard players operation #cents money_helper %= #hundred money_helper
data modify storage money:board temp set value {}
execute store result storage money:board temp.rank int 1 run scoreboard players get @s money_rank
execute store result storage money:board temp.dollars int 1 run scoreboard players get #dollars money_helper
execute store result storage money:board temp.cents int 1 run scoreboard players get #cents money_helper
data modify storage money:board temp.line set value {"text":"","extra":[]}
data modify storage money:board temp.line.extra append value {"nbt":"temp.rank","storage":"money:board","color":"gold","bold":true}
data modify storage money:board temp.line.extra append value {"text":". ","color":"gold"}
data modify storage money:board temp.line.extra append value {"selector":"@s","color":"white"}
data modify storage money:board temp.line.extra append value {"text":" - $","color":"yellow"}
data modify storage money:board temp.line.extra append value {"nbt":"temp.dollars","storage":"money:board","color":"yellow"}
data modify storage money:board temp.line.extra append value {"text":".","color":"yellow"}
execute if score #cents money_helper < #ten money_helper run data modify storage money:board temp.line.extra append value {"text":"0","color":"yellow"}
data modify storage money:board temp.line.extra append value {"nbt":"temp.cents","storage":"money:board","color":"yellow"}
data modify storage money:board temp.line.extra append value {"text":"$","color":"yellow"}
data modify storage money:board lines append from storage money:board temp.line
data remove storage money:board temp
