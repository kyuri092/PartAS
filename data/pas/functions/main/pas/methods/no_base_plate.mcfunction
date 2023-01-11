
##NoBasePlate

execute if score $isNoBasePlate pas.number matches 1 run item replace entity @e[tag=pas.same, tag=pas.basePlate] armor.head with air
execute unless score $isNoBasePlate pas.number matches 1 unless score $isSmall pas.number matches 1 run item replace entity @e[tag=pas.same, tag=pas.basePlate] armor.head with barrier{CustomModelData: 9201007}
execute unless score $isNoBasePlate pas.number matches 1 if score $isSmall pas.number matches 1 run item replace entity @e[tag=pas.same, tag=pas.basePlate] armor.head with barrier{CustomModelData: 9201014}