
##Invisible

scoreboard players set $customModelData pas.number 9201000
execute if score $isSmall pas.number matches 1 run scoreboard players add $customModelData pas.number 7

scoreboard players set $invisibleOperation pas.number 1
execute as @e[tag=pas.same, tag=pas.head] run function pas:main/pas/methods/invisible_2
execute as @e[tag=pas.same, tag=pas.body] run function pas:main/pas/methods/invisible_2
execute as @e[tag=pas.same, tag=pas.armR] run function pas:main/pas/methods/invisible_2
execute as @e[tag=pas.same, tag=pas.armL] run function pas:main/pas/methods/invisible_2
execute as @e[tag=pas.same, tag=pas.legR] run function pas:main/pas/methods/invisible_2
execute as @e[tag=pas.same, tag=pas.legL] run function pas:main/pas/methods/invisible_2