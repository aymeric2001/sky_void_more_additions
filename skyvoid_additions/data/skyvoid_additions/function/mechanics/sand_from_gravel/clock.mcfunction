schedule function skyvoid_additions:mechanics/sand_from_gravel/clock 1t

execute as @e[type=falling_block,tag=!skyvoid_additions_anvil_check,tag=!smithed.entity] run function skyvoid_additions:mechanics/sand_from_gravel/check_falling_block
