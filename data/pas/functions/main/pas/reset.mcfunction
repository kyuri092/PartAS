
##PAS reset

tag @s add pas.same
execute at @e[tag=pas.parts] if score @s pas.id = @e[tag=pas.parts, limit=1, sort=nearest] pas.id run tag @e[tag=pas.parts, limit=1, sort=nearest] add pas.same

scoreboard players reset @s pas.id
scoreboard players reset @s pas.invisible1000000
scoreboard players reset @s pas.beforeIsSmall
scoreboard players reset @s pas.beforeIsNoBasePlate
scoreboard players reset @s pas.beforeRotation
scoreboard players reset @s pas.beforeX
scoreboard players reset @s pas.beforeY
scoreboard players reset @s pas.beforeZ
scoreboard players reset @s pas.beforePoseHead1
scoreboard players reset @s pas.beforePoseHead2
scoreboard players reset @s pas.beforePoseHead3
scoreboard players reset @s pas.beforePoseBody1
scoreboard players reset @s pas.beforePoseBody2
scoreboard players reset @s pas.beforePoseBody3
scoreboard players reset @s pas.beforePoseArmR1
scoreboard players reset @s pas.beforePoseArmR2
scoreboard players reset @s pas.beforePoseArmR3
scoreboard players reset @s pas.beforePoseArmL1
scoreboard players reset @s pas.beforePoseArmL2
scoreboard players reset @s pas.beforePoseArmL3
scoreboard players reset @s pas.beforePoseLegR1
scoreboard players reset @s pas.beforePoseLegR2
scoreboard players reset @s pas.beforePoseLegR3
scoreboard players reset @s pas.beforePoseLegL1
scoreboard players reset @s pas.beforePoseLegL2
scoreboard players reset @s pas.beforePoseLegL3
scoreboard players reset @s pas.beforeInvisible1000000

item replace entity @s armor.legs from entity @e[tag=pas.same, tag=pas.legArmor, limit=1] armor.legs
item replace entity @s armor.feet from entity @e[tag=pas.same, tag=pas.legArmor, limit=1] armor.feet
data modify entity @s Invisible set value 0b


tag @e[tag=pas.same] remove pas.same