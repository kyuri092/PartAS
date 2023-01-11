
##Operation Legs Pos


#y-axis
scoreboard players operation $bodySin pas.number = $bodySin2 pas.number
scoreboard players operation $bodyCos pas.number = $bodyCos2 pas.number

scoreboard players operation $nx pas.number = #0 pas.number
scoreboard players operation $ny pas.number = #100 pas.number
scoreboard players operation $nz pas.number = #0 pas.number
function pas:main/pas/methods/operation_rodriguez


#z-axis
scoreboard players operation $bodySin pas.number = $bodySin3 pas.number
scoreboard players operation $bodyCos pas.number = $bodyCos3 pas.number

scoreboard players operation $nx pas.number = #0 pas.number
scoreboard players operation $ny pas.number = #0 pas.number
scoreboard players operation $nz pas.number = #100 pas.number
function pas:main/pas/methods/operation_rodriguez


#rocal x-axis
scoreboard players operation $setX_5 pas.number = $setX pas.number
scoreboard players operation $setY_5 pas.number = $setY pas.number
scoreboard players operation $setZ_5 pas.number = $setZ pas.number


scoreboard players operation $setX pas.number = #100 pas.number
scoreboard players operation $setY pas.number = #0 pas.number
scoreboard players operation $setZ pas.number = #0 pas.number

scoreboard players operation $bodySin pas.number = $bodySin2 pas.number
scoreboard players operation $bodyCos pas.number = $bodyCos2 pas.number

scoreboard players operation $nx pas.number = #0 pas.number
scoreboard players operation $ny pas.number = #100 pas.number
scoreboard players operation $nz pas.number = #0 pas.number
function pas:main/pas/methods/operation_rodriguez

scoreboard players operation $bodySin pas.number = $bodySin3 pas.number
scoreboard players operation $bodyCos pas.number = $bodyCos3 pas.number

scoreboard players operation $nx pas.number = #0 pas.number
scoreboard players operation $ny pas.number = #0 pas.number
scoreboard players operation $nz pas.number = #100 pas.number
function pas:main/pas/methods/operation_rodriguez


scoreboard players operation $nx pas.number = $setX pas.number
scoreboard players operation $ny pas.number = $setY pas.number
scoreboard players operation $nz pas.number = $setZ pas.number

scoreboard players operation $setX pas.number = $setX_5 pas.number
scoreboard players operation $setY pas.number = $setY_5 pas.number
scoreboard players operation $setZ pas.number = $setZ_5 pas.number

scoreboard players operation $bodySin pas.number = $bodySin1 pas.number
scoreboard players operation $bodyCos pas.number = $bodyCos1 pas.number
function pas:main/pas/methods/operation_rodriguez


#rotation
scoreboard players operation $nx pas.number = #0 pas.number
scoreboard players operation $ny pas.number = #100 pas.number
scoreboard players operation $nz pas.number = #0 pas.number

scoreboard players operation $bodySin pas.number = $sin pas.number
scoreboard players operation $bodyCos pas.number = $cos pas.number
function pas:main/pas/methods/operation_rodriguez



#small
scoreboard players operation $setX pas.number *= $small pas.number
scoreboard players operation $setY pas.number *= $small pas.number
scoreboard players operation $setZ pas.number *= $small pas.number
scoreboard players operation $setX pas.number /= #100 pas.number
scoreboard players operation $setY pas.number /= #100 pas.number
scoreboard players operation $setZ pas.number /= #100 pas.number


scoreboard players operation $setX pas.number += $getX pas.number
scoreboard players operation $setY pas.number += $getY pas.number
scoreboard players operation $setZ pas.number += $getZ pas.number