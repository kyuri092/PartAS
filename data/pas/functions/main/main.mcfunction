
##main

execute as @e[type=armor_stand, tag=pas.AS] unless score @s pas.id = @s pas.id at @s run function pas:main/pas/init
execute as @e[type=armor_stand, tag=!pas.AS, tag=!pas.parts] if score @s pas.id = @s pas.id run function pas:main/pas/reset
execute as @e[type=armor_stand, tag=pas.parts] at @e[tag=pas.AS] if score @s pas.id = @e[tag=pas.AS, limit=1, sort=nearest] pas.id run tag @s add pas.noKill
kill @e[tag=pas.parts, tag=!pas.noKill]
tag @e[tag=pas.noKill] remove pas.noKill

execute as @e[type=armor_stand, tag=pas.AS] at @s run function pas:main/pas/main