execute store success score $found sky_void_more_additions align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ lava[level=0]

execute if score $found sky_void_more_additions matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=smithed.entity,distance=..0.5,limit=1] run summon marker ~ ~ ~ {CustomName:'"sky_void_more_additions_lava"',Tags:["sky_void_more_additions_lava","sky_void_more_additions_calcite_creation"]}

scoreboard players remove $ray sky_void_more_additions 1
execute unless score $found sky_void_more_additions matches 1 if score $ray sky_void_more_additions matches 1.. positioned ^ ^ ^0.1 run function sky_void_more_additions:mechanics/calcite_from_dead_coral/summon_marker/lava_ray