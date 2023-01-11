
##Small

execute store result entity @e[tag=pas.same, tag=pas.legArmor, limit=1] Small byte 1 run data get entity @s Small
scoreboard players set $customModelData pas.number 9201000
execute if score $isSmall pas.number matches 1 run scoreboard players add $customModelData pas.number 7
execute store result entity @e[tag=pas.same, tag=pas.head, limit=1] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add $customModelData pas.number 1
execute store result entity @e[tag=pas.same, tag=pas.body, limit=1] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add $customModelData pas.number 1
execute store result entity @e[tag=pas.same, tag=pas.armR, limit=1] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add $customModelData pas.number 1
execute store result entity @e[tag=pas.same, tag=pas.armL, limit=1] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add $customModelData pas.number 1
execute store result entity @e[tag=pas.same, tag=pas.legR, limit=1] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add $customModelData pas.number 1
execute store result entity @e[tag=pas.same, tag=pas.legL, limit=1] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add $customModelData pas.number 1
execute store result entity @e[tag=pas.same, tag=pas.basePlate, limit=1] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add $customModelData pas.number 1