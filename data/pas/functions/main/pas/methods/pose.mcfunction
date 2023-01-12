
##Pose

execute as @e[tag=pas.same, tag=pas.parts] run data modify entity @s Pose set value {}
data modify entity @e[tag=pas.same, tag=pas.head, limit=1] Pose.Head set from entity @s Pose.Head
data modify entity @e[tag=pas.same, tag=pas.body, limit=1] Pose.Head set from entity @s Pose.Body
data modify entity @e[tag=pas.same, tag=pas.armR, limit=1] Pose.Head set from entity @s Pose.RightArm
data modify entity @e[tag=pas.same, tag=pas.armL, limit=1] Pose.Head set from entity @s Pose.LeftArm
data modify entity @e[tag=pas.same, tag=pas.legR, limit=1] Pose.Head set from entity @s Pose.RightLeg
data modify entity @e[tag=pas.same, tag=pas.legL, limit=1] Pose.Head set from entity @s Pose.LeftLeg
data modify entity @e[tag=pas.same, tag=pas.legArmor, limit=1] Pose.RightLeg set from entity @s Pose.RightLeg
data modify entity @e[tag=pas.same, tag=pas.legArmor, limit=1] Pose.LeftLeg set from entity @s Pose.LeftLeg
