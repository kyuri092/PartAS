
##Set Leggings

tag @s add pas.same
execute as @e[tag=pas.parts] if score @s pas.id = @e[tag=pas.AS, limit=1, sort=nearest] pas.id run tag @s add pas.same

item replace entity @a[tag=pas.same] weapon from entity @e[tag=pas.same, tag=pas.legArmor, limit=1] armor.legs
execute if entity @e[tag=pas.same, tag=pas.legArmor, predicate=pas:is_legs_air] run item replace entity @a[tag=pas.same, gamemode=creative] weapon from entity @s armor.legs
item replace entity @e[tag=pas.same, tag=pas.legArmor] armor.legs from entity @s armor.legs
data modify entity @s ArmorItems[1] set value {id: "minecraft:barrier", Count: 1b, tag: {ItemTags: ["pas.isEquip"]}}

tag @s remove pas.same
tag @e[tag=pas.same, tag=pas.parts] remove pas.same