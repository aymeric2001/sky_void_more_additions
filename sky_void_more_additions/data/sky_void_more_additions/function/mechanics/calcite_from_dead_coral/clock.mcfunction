schedule function sky_void_more_additions:mechanics/calcite_from_dead_coral/clock 10s

# 1. Détecte les blocs de corail mort
execute as @e[type=marker,tag=sky_void_more_additions_calcite_creation] at @s run function sky_void_more_additions:mechanics/calcite_from_dead_coral/detect_coral_from_marker
