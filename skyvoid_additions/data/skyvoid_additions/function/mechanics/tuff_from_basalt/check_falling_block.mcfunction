# checks if the falling block is an anvil and converts basalt block into tuf block
# @s = falling block
# run from skyvoid_additions:mechanics/tuff_from_basalt/clock
# check nbt of falling block
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:anvil"}} run tag @s add skyvoid_additions_falling_anvil
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:chipped_anvil"}} run tag @s add skyvoid_additions_falling_anvil
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:damaged_anvil"}} run tag @s add skyvoid_additions_falling_anvil
tag @s[tag=!skyvoid_additions_falling_anvil] add skyvoid_additions_anvil_check

# Check for packed_ice around the basalt block and place tuff
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ basalt if block ~1 ~ ~ packed_ice run setblock ~ ~ ~ tuff
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ basalt if block ~-1 ~ ~ packed_ice run setblock ~ ~ ~ tuff
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ basalt if block ~ ~-1 ~ packed_ice run setblock ~ ~ ~ tuff
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ basalt if block ~ ~ ~1 packed_ice run setblock ~ ~ ~ tuff
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ basalt if block ~ ~ ~-1 packed_ice run setblock ~ ~ ~ tuff
