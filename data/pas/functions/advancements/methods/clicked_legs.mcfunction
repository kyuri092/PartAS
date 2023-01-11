
##Clicked Legs

execute as @e[tag=pas.legArmor] if score @s pas.id = @e[tag=pas.clicked_legs, limit=1] pas.id run tag @s add pas.same

item replace entity @s weapon from entity @e[tag=pas.same, tag=pas.legArmor, limit=1] armor.legs
execute if entity @e[tag=pas.same, tag=pas.legArmor, predicate=pas:is_legs_air] run item replace entity @s[gamemode=creative] weapon from entity @e[tag=pas.clicked_legs, limit=1] armor.legs

tag @e[tag=pas.clicked_legs] remove pas.clicked_legs