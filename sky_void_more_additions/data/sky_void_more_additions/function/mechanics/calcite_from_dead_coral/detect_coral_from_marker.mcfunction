# Détecte un bloc de corail mort à proximité du marqueur
execute as @e[type=marker,tag=sky_void_more_additions_calcite_creation] at @s if block ~ ~1 ~ #sky_void_more_additions:calcite_from_dead_coral_blocks/converts_to_calcite positioned ~ ~1 ~ run function sky_void_more_additions:mechanics/calcite_from_dead_coral/check_surroundings
execute as @e[type=marker,tag=sky_void_more_additions_calcite_creation] at @s if block ~ ~-1 ~ #sky_void_more_additions:calcite_from_dead_coral_blocks/converts_to_calcite positioned ~ ~-1 ~ run function sky_void_more_additions:mechanics/calcite_from_dead_coral/check_surroundings
execute as @e[type=marker,tag=sky_void_more_additions_calcite_creation] at @s if block ~1 ~ ~ #sky_void_more_additions:calcite_from_dead_coral_blocks/converts_to_calcite positioned ~1 ~ ~ run function sky_void_more_additions:mechanics/calcite_from_dead_coral/check_surroundings
execute as @e[type=marker,tag=sky_void_more_additions_calcite_creation] at @s if block ~-1 ~ ~ #sky_void_more_additions:calcite_from_dead_coral_blocks/converts_to_calcite positioned ~-1 ~ ~ run function sky_void_more_additions:mechanics/calcite_from_dead_coral/check_surroundings
execute as @e[type=marker,tag=sky_void_more_additions_calcite_creation] at @s if block ~ ~ ~1 #sky_void_more_additions:calcite_from_dead_coral_blocks/converts_to_calcite positioned ~ ~ ~1 run function sky_void_more_additions:mechanics/calcite_from_dead_coral/check_surroundings
execute as @e[type=marker,tag=sky_void_more_additions_calcite_creation] at @s if block ~ ~ ~-1 #sky_void_more_additions:calcite_from_dead_coral_blocks/converts_to_calcite positioned ~ ~ ~-1 run function sky_void_more_additions:mechanics/calcite_from_dead_coral/check_surroundings
