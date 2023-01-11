
##Set Boots

item replace entity @e[tag=pas.same, tag=pas.legArmor] armor.feet from entity @s armor.feet
item replace entity @s armor.feet with air
execute if entity @e[tag=pas.same, tag=pas.legArmor, predicate=!pas:is_feet_air] run data modify entity @s ArmorItems[0] set value {id: "minecraft:barrier", Count: 1b, tag: {ItemTags: ["pas.isEquip"]}}