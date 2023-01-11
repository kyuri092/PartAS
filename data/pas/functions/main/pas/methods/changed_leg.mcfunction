
##Changed Leg

scoreboard players reset $isChangedLegsArmor pas.number
scoreboard players reset $isChangedFeetArmor pas.number
execute if entity @s[predicate=!pas:is_legs_equip, predicate=pas:is_legs_air] if entity @e[tag=pas.same, tag=pas.legArmor, predicate=!pas:is_legs_air] run scoreboard players set $isChangedLegsArmor pas.number 1
execute if entity @s[predicate=!pas:is_legs_equip, predicate=!pas:is_legs_air] run scoreboard players set $isChangedLegsArmor pas.number 1
execute if entity @s[predicate=!pas:is_feet_equip, predicate=pas:is_feet_air] if entity @e[tag=pas.same, tag=pas.legArmor, predicate=!pas:is_feet_air] run scoreboard players set $isChangedFeetArmor pas.number 1
execute if entity @s[predicate=!pas:is_feet_equip, predicate=!pas:is_feet_air] run scoreboard players set $isChangedFeetArmor pas.number 1