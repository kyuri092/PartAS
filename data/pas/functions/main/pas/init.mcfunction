
##PAS init

tag @s add pas.init

summon armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, NoGravity: 1b, NoBasePlate: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:barrier", Count:1b, tag: {CustomModelData:9201001}}], Tags: ["pas.parts", "pas.head", "pas.init"]}
summon armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, NoGravity: 1b, NoBasePlate: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:barrier", Count:1b, tag: {CustomModelData:9201002}}], Tags: ["pas.parts", "pas.body", "pas.init"]}
summon armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, NoGravity: 1b, NoBasePlate: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:barrier", Count:1b, tag: {CustomModelData:9201003}}], Tags: ["pas.parts", "pas.armR", "pas.init"]}
summon armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, NoGravity: 1b, NoBasePlate: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:barrier", Count:1b, tag: {CustomModelData:9201004}}], Tags: ["pas.parts", "pas.armL", "pas.init"]}
summon armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, NoGravity: 1b, NoBasePlate: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:barrier", Count:1b, tag: {CustomModelData:9201005}}], Tags: ["pas.parts", "pas.legR", "pas.init"]}
summon armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, NoGravity: 1b, NoBasePlate: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:barrier", Count:1b, tag: {CustomModelData:9201006}}], Tags: ["pas.parts", "pas.legL", "pas.init"]}
summon armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, NoGravity: 1b, NoBasePlate: 1b, Tags: ["pas.parts", "pas.basePlate", "pas.init"]}
summon armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, NoGravity: 1b, NoBasePlate: 1b, Tags: ["pas.parts", "pas.legArmor", "pas.init"]}

data modify entity @s Invisible set value 1b
item replace entity @e[tag=pas.init, tag=pas.legArmor] armor.legs from entity @s armor.legs
item replace entity @e[tag=pas.init, tag=pas.legArmor] armor.feet from entity @s armor.feet
execute if entity @e[tag=pas.init, tag=pas.legArmor, predicate=!pas:is_legs_air] run data modify entity @s ArmorItems[1] set value {id: "minecraft:barrier", Count: 1b, tag: {ItemTags: ["pas.isEquip"]}}
execute if entity @e[tag=pas.init, tag=pas.legArmor, predicate=!pas:is_feet_air] run data modify entity @s ArmorItems[0] set value {id: "minecraft:barrier", Count: 1b, tag: {ItemTags: ["pas.isEquip"]}}


#1.19.2バグ修正用
execute as @e[tag=pas.init] at @s run tp @s @s

execute store result score @e[tag=pas.init] pas.id run scoreboard players add $count pas.id 1
tag @e[tag=pas.init] remove pas.init