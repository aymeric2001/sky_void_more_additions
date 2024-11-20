{
  "criteria": {
    "requirement": {
      "trigger": "minecraft:placed_block",
      "conditions": {
        "player": [
          {
            "condition": "minecraft:any_of",
            "terms": [
              {
                "condition": "minecraft:entity_properties",
                "entity": "this",
                "predicate": {
                  "equipment": {
                    "mainhand": {
                      "items": [
                        "minecraft:lava_bucket"
                      ]
                    }
                  }
                }
              },
              {
                "condition": "minecraft:entity_properties",
                "entity": "this",
                "predicate": {
                  "equipment": {
                    "offhand": {
                      "items": [
                        "minecraft:lava_bucket"
                      ]
                    },
                    "mainhand": {
                      "count": 0
                    }
                  }
                }
              }
            ]
          },
          {
            "condition": "minecraft:value_check",
            "value": {
              "type": "minecraft:score",
              "target": {
                "type": "minecraft:fixed",
                "name": "sky_void_more_additions"
              },
              "score": "load.status"
            },
            "range": 1
          },
          {
            "condition": "minecraft:value_check",
            "value": {
              "type": "minecraft:score",
              "target": {
                "type": "minecraft:fixed",
                "name": "calcite_from_dead_coral"
              },
              "score": "sky_void_more_config"
            },
            "range": 1
          }
        ],
        "location": [
          {
            "condition": "minecraft:location_check",
            "predicate": {
              "block": {
                "blocks": [
                  "minecraft:lava"
                ]
              }
            }
          }
        ]
      }
    }
  },
  "rewards": {
    "function": "sky_void_more_additions/data/sky_void_more_additions/function/mechanics/calcite_from_dead_coral/summon_marker/placed_lava"
  }
}
