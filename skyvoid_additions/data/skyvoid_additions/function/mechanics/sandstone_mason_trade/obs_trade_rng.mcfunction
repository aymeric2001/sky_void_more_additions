# Generate random number to simulate a 22% chance of sandstone and red_sandstone
# @s = mason that level up to journeyman level
# run from skyvoid_additions:mechanics/sandstone_mason_trade/clock

#set random trade number scoreboard
scoreboard objectives add trade_choice_1 dummy
scoreboard objectives add trade_choice_2 dummy

# Generating first trade number
execute as @s run scoreboard players set @s trade_choice_1 1..9

# Generating second trade number
execute as @s run scoreboard players set @s trade_choice_2 1..8

# Correction to prevent one trade from apearing twice 
execute as @s if score @s trade_choice_2 >= @s trade_choice_1 run scoreboard players add @s trade_choice_2 1

execute as @s at @s run function skyvoid_additions:mechanics/sandstone_mason_trade/trade_selection
