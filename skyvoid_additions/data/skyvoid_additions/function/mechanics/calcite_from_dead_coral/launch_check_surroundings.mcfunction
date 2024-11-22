# launch the check_surroundings function
# @s = dead_coral_block marker
# located at @s
# run from skyvoid_additions:mechanics/calcite_from_dead_coral/detect_coral_from_marker
execute as @e[type=marker,tag=skyvoid_additions_dead_coral_block] as @s run function skyvoid_additions:mechanics/calcite_from_dead_coral/check_surroundings
