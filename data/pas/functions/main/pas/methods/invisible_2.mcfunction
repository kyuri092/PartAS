
##Invisible 2

scoreboard players operation $invisible pas.number = @e[tag=pas.same, tag=pas.AS] pas.invisible1000000
scoreboard players operation $invisible pas.number /= $invisibleOperation pas.number
scoreboard players operation $invisible pas.number %= #10 pas.number
scoreboard players operation $invisibleOperation pas.number *= #10 pas.number

execute if score $invisible pas.number matches 1.. run item replace entity @s armor.head with air
execute unless score $invisible pas.number matches 1.. run item replace entity @s armor.head with barrier{CustomModelData: 9201000}
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add $customModelData pas.number 1