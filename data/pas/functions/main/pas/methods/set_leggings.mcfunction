
##Set Leggings

item replace entity @e[tag=pas.same, tag=pas.legArmor] armor.legs from entity @s armor.legs
item replace entity @s armor.legs with air
execute if entity @e[tag=pas.same, tag=pas.legArmor, predicate=!pas:is_legs_air] run data modify entity @s ArmorItems[1] set value {id: "minecraft:barrier", Count: 1b, tag: {ItemTags: ["pas.isEquip"]}}