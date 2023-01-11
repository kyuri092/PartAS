
##Interacted pas.AS

execute as @e[tag=pas.AS] at @s run function pas:advancements/methods/search_clicked_pas

execute if entity @e[tag=pas.AS, tag=pas.clicked_legs] run function pas:advancements/methods/clicked_legs
execute if entity @e[tag=pas.AS, tag=pas.clicked_feet] run function pas:advancements/methods/clicked_feet

tag @e[tag=pas.same] remove pas.same
advancement revoke @s only pas:interacted_pas_as