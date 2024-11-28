# checks if the falling block is an anvil and converts clay block into deepslate block
# @s = falling block
# run from skyvoid_additions:mechanics/deepslate_from_clay/clock
# check nbt of falling block
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:anvil"}} run tag @s add skyvoid_additions_falling_anvil
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:chipped_anvil"}} run tag @s add skyvoid_additions_falling_anvil
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:damaged_anvil"}} run tag @s add skyvoid_additions_falling_anvil
tag @s[tag=!skyvoid_additions_falling_anvil] add skyvoid_additions_anvil_check

# Check for magma_block around the clay block and place deepslate
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ clay if block ~1 ~ ~ magma_block run setblock ~ ~ ~ deepslate
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ clay if block ~-1 ~ ~ magma_block run setblock ~ ~ ~ deepslate
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ clay if block ~ ~-1 ~ magma_block run setblock ~ ~ ~ deepslate
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ clay if block ~ ~ ~1 magma_block run setblock ~ ~ ~ deepslate
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ clay if block ~ ~ ~-1 magma_block run setblock ~ ~ ~ deepslate
