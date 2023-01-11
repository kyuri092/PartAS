
##Operation Position


#small
execute if score $isSmall pas.number matches 1 run scoreboard players set $small pas.number 50
execute if score $isSmall pas.number matches 1 run scoreboard players set $small2 pas.number 50
execute unless score $isSmall pas.number matches 1 run scoreboard players set $small pas.number 100
execute unless score $isSmall pas.number matches 1 run scoreboard players set $small2 pas.number 100


#parts pos
function pas:main/methods/get_pos
execute store result storage math: in int 1 run data get entity @s Rotation[0]
function #math:sin
execute store result score $sin pas.number run data get storage math: out 100
function #math:cos
execute store result score $cos pas.number run data get storage math: out 100

execute store result storage math: in int -1 run data get entity @s Pose.Body[0]
function #math:sin
execute store result score $bodySin1 pas.number run data get storage math: out 100
function #math:cos
execute store result score $bodyCos1 pas.number run data get storage math: out 100

execute store result storage math: in int 1 run data get entity @s Pose.Body[1]
function #math:sin
execute store result score $bodySin2 pas.number run data get storage math: out 100
function #math:cos
execute store result score $bodyCos2 pas.number run data get storage math: out 100

execute store result storage math: in int 1 run data get entity @s Pose.Body[2]
function #math:sin
execute store result score $bodySin3 pas.number run data get storage math: out 100
function #math:cos
execute store result score $bodyCos3 pas.number run data get storage math: out 100


#head
scoreboard players operation $setX pas.number = $getX pas.number
scoreboard players operation $setY pas.number = $getY pas.number
scoreboard players operation $setZ pas.number = $getZ pas.number
execute if score $isSmall pas.number matches 1 run scoreboard players operation $setY pas.number += #BaseSmallHeadY pas.number
execute as @e[tag=pas.same, tag=pas.head] run function pas:main/methods/set_pos

#body
scoreboard players operation $setY pas.number = #BaseBodyPitch pas.number
scoreboard players operation $setX pas.number = $getX pas.number
scoreboard players operation $setY pas.number += $getY pas.number
scoreboard players operation $setZ pas.number = $getZ pas.number
execute if score $isSmall pas.number matches 1 run scoreboard players operation $setY pas.number += #BaseSmallBodyY pas.number
execute as @e[tag=pas.same, tag=pas.body] run function pas:main/methods/set_pos

#armR
scoreboard players operation $setX pas.number = #BaseArmRYaw pas.number
scoreboard players operation $setY pas.number = #BaseArmPitch pas.number
scoreboard players operation $setZ pas.number = #0 pas.number
function pas:main/pas/methods/operation_limbs_pos
execute if score $isSmall pas.number matches 1 run scoreboard players operation $setY pas.number += #BaseSmallLimbsY pas.number
execute as @e[tag=pas.same, tag=pas.armR] run function pas:main/methods/set_pos

#armL
scoreboard players operation $setX pas.number = #BaseArmLYaw pas.number
scoreboard players operation $setY pas.number = #BaseArmPitch pas.number
scoreboard players operation $setZ pas.number = #0 pas.number
function pas:main/pas/methods/operation_limbs_pos
execute if score $isSmall pas.number matches 1 run scoreboard players operation $setY pas.number += #BaseSmallLimbsY pas.number
execute as @e[tag=pas.same, tag=pas.armL] run function pas:main/methods/set_pos

#legR
scoreboard players operation $setX pas.number = #BaseLegRYaw pas.number
scoreboard players operation $setY pas.number = #BaseBodyHeight pas.number
scoreboard players operation $setZ pas.number = #0 pas.number
function pas:main/pas/methods/operation_limbs_pos
execute if score $isSmall pas.number matches 1 run scoreboard players operation $setY pas.number += #BaseSmallLimbsY pas.number
execute as @e[tag=pas.same, tag=pas.legR] run function pas:main/methods/set_pos

#legL
scoreboard players operation $setX pas.number = #BaseLegLYaw pas.number
scoreboard players operation $setY pas.number = #BaseBodyHeight pas.number
scoreboard players operation $setZ pas.number = #0 pas.number
function pas:main/pas/methods/operation_limbs_pos
execute if score $isSmall pas.number matches 1 run scoreboard players operation $setY pas.number += #BaseSmallLimbsY pas.number
execute as @e[tag=pas.same, tag=pas.legL] run function pas:main/methods/set_pos

#legArmor
scoreboard players operation $setX pas.number = #0 pas.number
scoreboard players operation $setY pas.number = #BaseBodyHeight pas.number
scoreboard players operation $setZ pas.number = #0 pas.number
function pas:main/pas/methods/operation_limbs_pos
scoreboard players operation $setY_ pas.number = #BaseLegArmorHeight pas.number
scoreboard players operation $setY_ pas.number *= $small2 pas.number
scoreboard players operation $setY_ pas.number /= #100 pas.number
scoreboard players operation $setY pas.number += $setY_ pas.number
execute as @e[tag=pas.same, tag=pas.legArmor] run function pas:main/methods/set_pos

#basePlate
scoreboard players operation $setX pas.number = $getX pas.number
scoreboard players operation $setY pas.number = $getY pas.number
scoreboard players operation $setZ pas.number = $getZ pas.number
execute as @e[tag=pas.same, tag=pas.basePlate] run function pas:main/methods/set_pos

scoreboard players add test2 test 1