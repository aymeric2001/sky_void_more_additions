advancement revoke @s only sky_void_more_additions:calcite_from_dead_coral/place_lava

scoreboard players set $ray sky_void_more_additions 50
scoreboard players set $found sky_void_more_additions 0
execute anchored eyes positioned ^ ^ ^ run function sky_void_more_additions:mechanics/calcite_from_dead_coral/summon_marker/lava_ray

scoreboard players set $ray sky_void_more_additions 50
execute if score $found sky_void_more_additions matches 0 anchored eyes positioned ^ ^ ^ run function sky_void_more_additions:mechanics/calcite_from_dead_coral/summon_marker/lava_ray_fuzzy
