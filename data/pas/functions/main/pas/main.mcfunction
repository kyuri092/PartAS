
##PAS main

tag @s add pas.same
execute as @e[tag=pas.parts] if score @s pas.id = @e[tag=pas.same, limit=1] pas.id run tag @s add pas.same

function pas:main/pas/methods/changed_data



#position
execute unless score $noChangePos pas.number matches 1 run function pas:main/pas/methods/pos

#pose
execute if score $isChangedPose pas.number matches 1 run function pas:main/pas/methods/pose

#rotation
execute if score $isChangedRotation pas.number matches 1 as @e[tag=pas.same, tag=pas.parts, tag=!pas.basePlate] run data modify entity @s Rotation set from entity @e[tag=pas.same, tag=pas.AS, limit=1, sort=nearest] Rotation

#small
execute if score $isChangedSmall pas.number matches 1 run function pas:main/pas/methods/small

#invisible
execute unless score $isInvisible pas.number matches 1 run data modify entity @s Invisible set value 1b
execute unless score $isChangedPartInvisible pas.number matches 1 run function pas:main/pas/methods/invisible

#noBasePlate
execute if score $isChangedNoBasePlate pas.number matches 1 run function pas:main/pas/methods/no_base_plate

#equipment
execute if score $isChangedLegsArmor pas.number matches 1 run function pas:main/pas/methods/set_leggings
execute if score $isChangedFeetArmor pas.number matches 1 run function pas:main/pas/methods/set_boots

#PortalCoolDown
data modify entity @s PortalCooldown set value 2



tag @e[tag=pas.same] remove pas.same