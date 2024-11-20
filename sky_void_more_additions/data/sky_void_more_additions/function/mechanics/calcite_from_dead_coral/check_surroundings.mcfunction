# Associe les scores à chaque bloc de lave trouvé
scoreboard players set $lava_count sky_void_more_additions 0

# Vérifie les blocs autour du corail
execute positioned ~ ~ ~ if block ~1 ~ ~ lava[level=0] run scoreboard players add $lava_count sky_void_more_additions 1
execute positioned ~ ~ ~ if block ~-1 ~ ~ lava[level=0] run scoreboard players add $lava_count sky_void_more_additions 1
execute positioned ~ ~ ~ if block ~ ~1 ~ lava[level=0] run scoreboard players add $lava_count sky_void_more_additions 1
execute positioned ~ ~ ~ if block ~ ~-1 ~ lava[level=0] run scoreboard players add $lava_count sky_void_more_additions 1
execute positioned ~ ~ ~ if block ~ ~ ~1 lava[level=0] run scoreboard players add $lava_count sky_void_more_additions 1
execute positioned ~ ~ ~ if block ~ ~ ~-1 lava[level=0] run scoreboard players add $lava_count sky_void_more_additions 1

# Détermine la probabilité
execute if score $lava_count sky_void_more_additions matches 4.. if predicate sky_void_more_additions:dead_coral_conversion/four_lava run setblock ~ ~ ~ calcite
execute if score $lava_count sky_void_more_additions matches 2..3 if predicate sky_void_more_additions:dead_coral_conversion/two_tree_lava run setblock ~ ~ ~ calcite
execute if score $lava_count sky_void_more_additions matches 1 if predicate sky_void_more_additions:dead_coral_conversion/one_lava run setblock ~ ~ ~ calcite

# kill if block no longer exists
execute if entity @s[tag=sky_void_more_additions_lava] unless block ~ ~ ~ lava run kill @s
