
##Before Data

#get data
execute store result score $isSmall pas.number run data get entity @s Small
execute store result score $isInvisible pas.number run data get entity @s Invisible
execute store result score $isNoBasePlate pas.number run data get entity @s NoBasePlate
execute store result score $rotation pas.number run data get entity @s Rotation[0] 100
execute store result score $posX pas.number run data get entity @s Pos[0] 1000
execute store result score $posY pas.number run data get entity @s Pos[1] 1000
execute store result score $posZ pas.number run data get entity @s Pos[2] 1000
execute store result score $poseHead1 pas.number run data get entity @s Pose.Head[0] 1000
execute store result score $poseHead2 pas.number run data get entity @s Pose.Head[1] 1000
execute store result score $poseHead3 pas.number run data get entity @s Pose.Head[2] 1000
execute store result score $poseBody1 pas.number run data get entity @s Pose.Body[0] 1000
execute store result score $poseBody2 pas.number run data get entity @s Pose.Body[1] 1000
execute store result score $poseBody3 pas.number run data get entity @s Pose.Body[2] 1000
execute store result score $poseArmR1 pas.number run data get entity @s Pose.RightArm[0] 1000
execute store result score $poseArmR2 pas.number run data get entity @s Pose.RightArm[1] 1000
execute store result score $poseArmR3 pas.number run data get entity @s Pose.RightArm[2] 1000
execute store result score $poseArmL1 pas.number run data get entity @s Pose.LeftArm[0] 1000
execute store result score $poseArmL2 pas.number run data get entity @s Pose.LeftArm[1] 1000
execute store result score $poseArmL3 pas.number run data get entity @s Pose.LeftArm[2] 1000
execute store result score $poseLegR1 pas.number run data get entity @s Pose.RightLeg[0] 1000
execute store result score $poseLegR2 pas.number run data get entity @s Pose.RightLeg[1] 1000
execute store result score $poseLegR3 pas.number run data get entity @s Pose.RightLeg[2] 1000
execute store result score $poseLegL1 pas.number run data get entity @s Pose.LeftLeg[0] 1000
execute store result score $poseLegL2 pas.number run data get entity @s Pose.LeftLeg[1] 1000
execute store result score $poseLegL3 pas.number run data get entity @s Pose.LeftLeg[2] 1000

#changed data
scoreboard players reset $isChangedSmall pas.number
scoreboard players reset $isChangedPartInvisible pas.number
scoreboard players reset $isChangedNoBasePlate pas.number
scoreboard players reset $isChangedRotation pas.number
scoreboard players reset $isChangedPos pas.number
scoreboard players reset $isChangedPose pas.number
scoreboard players reset $noChangePos pas.number
execute unless score $isSmall pas.number = @s pas.beforeIsSmall run scoreboard players set $isChangedSmall pas.number 1
execute unless score @s pas.invisible1000000 = @s pas.beforeInvisible1000000 run scoreboard players set $isChangedPartInvisible pas.number 1
execute unless score $isNoBasePlate pas.number = @s pas.beforeIsNoBasePlate run scoreboard players set $isChangedNoBasePlate pas.number 1
execute unless score $rotation pas.number = @s pas.beforeRotation run scoreboard players set $isChangedRotation pas.number 1
execute unless score $posX pas.number = @s pas.beforeX run scoreboard players set $isChangedPos pas.number 1
execute unless score $posY pas.number = @s pas.beforeY run scoreboard players set $isChangedPos pas.number 1
execute unless score $posZ pas.number = @s pas.beforeZ run scoreboard players set $isChangedPos pas.number 1
execute unless score $poseHead1 pas.number = @s pas.beforePoseHead1 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseHead2 pas.number = @s pas.beforePoseHead2 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseHead3 pas.number = @s pas.beforePoseHead3 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseBody1 pas.number = @s pas.beforePoseBody1 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseBody2 pas.number = @s pas.beforePoseBody2 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseBody3 pas.number = @s pas.beforePoseBody3 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseArmR1 pas.number = @s pas.beforePoseArmR1 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseArmR2 pas.number = @s pas.beforePoseArmR2 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseArmR3 pas.number = @s pas.beforePoseArmR3 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseArmL1 pas.number = @s pas.beforePoseArmL1 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseArmL2 pas.number = @s pas.beforePoseArmL2 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseArmL3 pas.number = @s pas.beforePoseArmL3 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseLegR1 pas.number = @s pas.beforePoseLegR1 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseLegR2 pas.number = @s pas.beforePoseLegR2 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseLegR3 pas.number = @s pas.beforePoseLegR3 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseLegL1 pas.number = @s pas.beforePoseLegL1 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseLegL2 pas.number = @s pas.beforePoseLegL2 run scoreboard players set $isChangedPose pas.number 1
execute unless score $poseLegL3 pas.number = @s pas.beforePoseLegL3 run scoreboard players set $isChangedPose pas.number 1
function pas:main/pas/methods/changed_leg

execute unless score $isChangedPos pas.number matches 1 unless score $isChangedRotation pas.number matches 1 unless score $isChangedPose pas.number matches 1 unless score $isChangedSmall pas.number matches 1 run scoreboard players set $noChangePos pas.number 1

#before data
execute store result score @s pas.beforeIsSmall run data get entity @s Small
execute store result score @s pas.beforeIsNoBasePlate run data get entity @s NoBasePlate
execute store result score @s pas.beforeRotation run data get entity @s Rotation[0] 100
execute store result score @s pas.beforeX run data get entity @s Pos[0] 1000
execute store result score @s pas.beforeY run data get entity @s Pos[1] 1000
execute store result score @s pas.beforeZ run data get entity @s Pos[2] 1000
execute store result score @s pas.beforePoseHead1 run data get entity @s Pose.Head[0] 1000
execute store result score @s pas.beforePoseHead2 run data get entity @s Pose.Head[1] 1000
execute store result score @s pas.beforePoseHead3 run data get entity @s Pose.Head[2] 1000
execute store result score @s pas.beforePoseBody1 run data get entity @s Pose.Body[0] 1000
execute store result score @s pas.beforePoseBody2 run data get entity @s Pose.Body[1] 1000
execute store result score @s pas.beforePoseBody3 run data get entity @s Pose.Body[2] 1000
execute store result score @s pas.beforePoseArmR1 run data get entity @s Pose.RightArm[0] 1000
execute store result score @s pas.beforePoseArmR2 run data get entity @s Pose.RightArm[1] 1000
execute store result score @s pas.beforePoseArmR3 run data get entity @s Pose.RightArm[2] 1000
execute store result score @s pas.beforePoseArmL1 run data get entity @s Pose.LeftArm[0] 1000
execute store result score @s pas.beforePoseArmL2 run data get entity @s Pose.LeftArm[1] 1000
execute store result score @s pas.beforePoseArmL3 run data get entity @s Pose.LeftArm[2] 1000
execute store result score @s pas.beforePoseLegR1 run data get entity @s Pose.RightLeg[0] 1000
execute store result score @s pas.beforePoseLegR2 run data get entity @s Pose.RightLeg[1] 1000
execute store result score @s pas.beforePoseLegR3 run data get entity @s Pose.RightLeg[2] 1000
execute store result score @s pas.beforePoseLegL1 run data get entity @s Pose.LeftLeg[0] 1000
execute store result score @s pas.beforePoseLegL2 run data get entity @s Pose.LeftLeg[1] 1000
execute store result score @s pas.beforePoseLegL3 run data get entity @s Pose.LeftLeg[2] 1000
scoreboard players operation @s pas.beforeInvisible1000000 = @s pas.invisible1000000