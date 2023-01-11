
##Search Clicked PAS

tag @s add pas.same
execute as @e[tag=pas.legArmor] if score @s pas.id = @e[tag=pas.same, limit=1] pas.id run tag @s add pas.same

function pas:main/pas/methods/changed_leg
execute if score $isChangedLegsArmor pas.number matches 1 run tag @s add pas.clicked_legs
execute if score $isChangedFeetArmor pas.number matches 1 run tag @s add pas.clicked_feet

tag @e[tag=pas.same] remove pas.same