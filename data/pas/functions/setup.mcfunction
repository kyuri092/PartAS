
#setup
tellraw @a [{"text":"[PartAS] ","color":"green"}, {"text":"導入に成功しました。", "color":"yellow"}]

#objectives
scoreboard objectives add pas.invisible1000000 dummy
scoreboard objectives add pas.beforeIsSmall dummy
scoreboard objectives add pas.beforeIsNoBasePlate dummy
scoreboard objectives add pas.beforeX dummy
scoreboard objectives add pas.beforeY dummy
scoreboard objectives add pas.beforeZ dummy
scoreboard objectives add pas.beforeRotation dummy
scoreboard objectives add pas.beforePoseHead1 dummy
scoreboard objectives add pas.beforePoseHead2 dummy
scoreboard objectives add pas.beforePoseHead3 dummy
scoreboard objectives add pas.beforePoseBody1 dummy
scoreboard objectives add pas.beforePoseBody2 dummy
scoreboard objectives add pas.beforePoseBody3 dummy
scoreboard objectives add pas.beforePoseArmR1 dummy
scoreboard objectives add pas.beforePoseArmR2 dummy
scoreboard objectives add pas.beforePoseArmR3 dummy
scoreboard objectives add pas.beforePoseArmL1 dummy
scoreboard objectives add pas.beforePoseArmL2 dummy
scoreboard objectives add pas.beforePoseArmL3 dummy
scoreboard objectives add pas.beforePoseLegR1 dummy
scoreboard objectives add pas.beforePoseLegR2 dummy
scoreboard objectives add pas.beforePoseLegR3 dummy
scoreboard objectives add pas.beforePoseLegL1 dummy
scoreboard objectives add pas.beforePoseLegL2 dummy
scoreboard objectives add pas.beforePoseLegL3 dummy
scoreboard objectives add pas.beforeInvisible1000000 dummy
scoreboard objectives add pas.id dummy


#number
scoreboard objectives add pas.number dummy

#Base x1000
scoreboard players set #BaseLegRYaw pas.number -120
scoreboard players set #BaseLegLYaw pas.number 120
scoreboard players set #BaseLegPitch pas.number 0
scoreboard players set #BaseLegArmorHeight pas.number 700
scoreboard players set #BaseBodyPitch pas.number 60
scoreboard players set #BaseBodyHeight pas.number -700
scoreboard players set #BaseArmRYaw pas.number -380
scoreboard players set #BaseArmLYaw pas.number 380
scoreboard players set #BaseArmPitch pas.number -67
scoreboard players set #BaseSmallHeadY pas.number -728
scoreboard players set #BaseSmallBodyY pas.number -740
scoreboard players set #BaseSmallLimbsY pas.number -710

#figures
scoreboard players set #-1 pas.number -1
scoreboard players set #0 pas.number 0
scoreboard players set #2 pas.number 2
scoreboard players set #10 pas.number 10
scoreboard players set #100 pas.number 100

#storage
data modify storage pas stand set value {}
data modify storage pas swim set value {Body:[78f,0f,0f],Head:[50f,0f,16f],LeftLeg:[94f,20f,0f],RightLeg:[92f,356f,0f],LeftArm:[90f,78f,0f],RightArm:[80f,299f,0f]}
data modify storage pas lie set value {Body:[0f,0f,70f],Head:[0f,0f,44f],LeftLeg:[320f,0f,90f],RightLeg:[350f,0f,66f],LeftArm:[0f,0f,211f],RightArm:[350f,0f,64f]}
data modify storage pas greeting set value {Body:[6f,0f,16f],Head:[0f,0f,8f],LeftLeg:[348f,0f,346f],RightLeg:[348f,0f,0f],LeftArm:[348f,0f,205f],RightArm:[10f,0f,30f]}
data modify storage pas sprawled set value {Body:[280f,0f,0f],Head:[280f,0f,0f],LeftLeg:[270f,335f,0f],RightLeg:[270f,25f,0f],LeftArm:[95f,100f,0f],RightArm:[95f,260f,0f]}
data modify storage pas acrobatic set value {Body:[10f,0f,161f],Head:[48f,0f,94f],LeftLeg:[348f,0f,90f],RightLeg:[358f,0f,185f],LeftArm:[270f,0f,86f],RightArm:[350f,0f,270f]}
data modify storage pas orz set value {Body:[85f,0f,0f],Head:[130f,0f,0f],LeftArm:[0f,14f,2f],RightArm:[0f,350f,356f]}
data modify storage pas zombie set value {Body:[30f,0f,0f],Head:[340f,0f,0f],LeftLeg:[14f,0f,0f],RightLeg:[344f,0f,0f],LeftArm:[265f,6f,0f],RightArm:[277f,350f,0f]}
data modify storage pas bridge set value {Body:[263f,0f,0f],Head:[197f,0f,0f],LeftLeg:[346f,0f,356f],RightLeg:[352f,0f,6f],LeftArm:[6f,0f,4f],RightArm:[2f,0f,356f]}
data modify storage pas handstand set value {Body:[180f,0f,0f],Head:[180f,0f,0f],LeftLeg:[180f,0f,5f],RightLeg:[180f,0f,355f],LeftArm:[0f,0f,355f],RightArm:[0f,0f,5f]}
data modify storage pas upside_down set value {Body:[180f,180f,0f],Head:[180f,180f,0f],LeftLeg:[180f,180f,0f],RightLeg:[180f,180f,0f],LeftArm:[180f,180f,0f],RightArm:[180f,180f,0f]}
data modify storage pas blown_off_1 set value {Body:[22f,0f,0f],Head:[30f,0f,0f],LeftLeg:[334f,330f,0f],RightLeg:[301f,6f,0f],LeftArm:[309f,304f,0f],RightArm:[281f,18f,0f]}
data modify storage pas blown_off_2 set value {Body:[321f,0f,0f],Head:[338f,0f,0f],LeftLeg:[295f,330f,0f],RightLeg:[275f,6f,0f],LeftArm:[293f,304f,0f],RightArm:[269f,18f,0f]}
data modify storage pas blown_off_3 set value {Body:[309f,0f,0f],Head:[330f,0f,0f],LeftLeg:[283f,348f,0f],RightLeg:[287f,28f,0f],LeftArm:[261f,334f,0f],RightArm:[257f,16f,0f]}
data modify storage pas blown_off_4 set value {Body:[279f,0f,14f],Head:[330f,0f,0f],LeftLeg:[269f,348f,0f],RightLeg:[273f,28f,0f],LeftArm:[271f,334f,0f],RightArm:[291f,16f,0f]}