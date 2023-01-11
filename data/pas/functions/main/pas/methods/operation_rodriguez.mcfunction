
##Operation Rodriguez


#1-cos
scoreboard players operation $1-cos pas.number = #100 pas.number
scoreboard players operation $1-cos pas.number -= $bodyCos pas.number


#z
scoreboard players operation $setX_ pas.number = $bodyCos pas.number
scoreboard players operation $setX_2 pas.number = $nx pas.number
scoreboard players operation $setX_2 pas.number *= $nx pas.number
scoreboard players operation $setX_2 pas.number /= #100 pas.number
scoreboard players operation $setX_2 pas.number *= $1-cos pas.number
scoreboard players operation $setX_2 pas.number /= #100 pas.number
scoreboard players operation $setX_ pas.number += $setX_2 pas.number
scoreboard players operation $setX_ pas.number *= $setX pas.number

scoreboard players operation $setX_2 pas.number = $nx pas.number
scoreboard players operation $setX_2 pas.number *= $nz pas.number
scoreboard players operation $setX_2 pas.number /= #100 pas.number
scoreboard players operation $setX_2 pas.number *= $1-cos pas.number
scoreboard players operation $setX_2 pas.number /= #100 pas.number
scoreboard players operation $setX_3 pas.number = $ny pas.number
scoreboard players operation $setX_3 pas.number *= $bodySin pas.number
scoreboard players operation $setX_3 pas.number /= #100 pas.number
scoreboard players operation $setX_3 pas.number *= #-1 pas.number
scoreboard players operation $setX_2 pas.number += $setX_3 pas.number
scoreboard players operation $setX_2 pas.number *= $setZ pas.number

scoreboard players operation $setX_3 pas.number = $ny pas.number
scoreboard players operation $setX_3 pas.number *= $nx pas.number
scoreboard players operation $setX_3 pas.number /= #100 pas.number
scoreboard players operation $setX_3 pas.number *= $1-cos pas.number
scoreboard players operation $setX_3 pas.number /= #100 pas.number
scoreboard players operation $setX_4 pas.number = $nz pas.number
scoreboard players operation $setX_4 pas.number *= $bodySin pas.number
scoreboard players operation $setX_4 pas.number /= #100 pas.number
scoreboard players operation $setX_3 pas.number += $setX_4 pas.number
scoreboard players operation $setX_3 pas.number *= $setY pas.number


#y
scoreboard players operation $setY_ pas.number = $ny pas.number
scoreboard players operation $setY_ pas.number *= $nx pas.number
scoreboard players operation $setY_ pas.number /= #100 pas.number
scoreboard players operation $setY_ pas.number *= $1-cos pas.number
scoreboard players operation $setY_ pas.number /= #100 pas.number
scoreboard players operation $setY_2 pas.number = $nz pas.number
scoreboard players operation $setY_2 pas.number *= $bodySin pas.number
scoreboard players operation $setY_2 pas.number /= #100 pas.number
scoreboard players operation $setY_2 pas.number *= #-1 pas.number
scoreboard players operation $setY_ pas.number += $setY_2 pas.number
scoreboard players operation $setY_ pas.number *= $setX pas.number

scoreboard players operation $setY_2 pas.number = $nz pas.number
scoreboard players operation $setY_2 pas.number *= $ny pas.number
scoreboard players operation $setY_2 pas.number /= #100 pas.number
scoreboard players operation $setY_2 pas.number *= $1-cos pas.number
scoreboard players operation $setY_2 pas.number /= #100 pas.number
scoreboard players operation $setY_3 pas.number = $nx pas.number
scoreboard players operation $setY_3 pas.number *= $bodySin pas.number
scoreboard players operation $setY_3 pas.number /= #100 pas.number
scoreboard players operation $setY_2 pas.number += $setY_3 pas.number
scoreboard players operation $setY_2 pas.number *= $setZ pas.number

scoreboard players operation $setY_3 pas.number = $bodyCos pas.number
scoreboard players operation $setY_4 pas.number = $ny pas.number
scoreboard players operation $setY_4 pas.number *= $ny pas.number
scoreboard players operation $setY_4 pas.number /= #100 pas.number
scoreboard players operation $setY_4 pas.number *= $1-cos pas.number
scoreboard players operation $setY_4 pas.number /= #100 pas.number
scoreboard players operation $setY_3 pas.number += $setY_4 pas.number
scoreboard players operation $setY_3 pas.number *= $setY pas.number


#z
scoreboard players operation $setZ_ pas.number = $nx pas.number
scoreboard players operation $setZ_ pas.number *= $nz pas.number
scoreboard players operation $setZ_ pas.number /= #100 pas.number
scoreboard players operation $setZ_ pas.number *= $1-cos pas.number
scoreboard players operation $setZ_ pas.number /= #100 pas.number
scoreboard players operation $setZ_2 pas.number = $ny pas.number
scoreboard players operation $setZ_2 pas.number *= $bodySin pas.number
scoreboard players operation $setZ_2 pas.number /= #100 pas.number
scoreboard players operation $setZ_ pas.number += $setZ_2 pas.number
scoreboard players operation $setZ_ pas.number *= $setX pas.number

scoreboard players operation $setZ_2 pas.number = $bodyCos pas.number
scoreboard players operation $setZ_3 pas.number = $nz pas.number
scoreboard players operation $setZ_3 pas.number *= $nz pas.number
scoreboard players operation $setZ_3 pas.number /= #100 pas.number
scoreboard players operation $setZ_3 pas.number *= $1-cos pas.number
scoreboard players operation $setZ_3 pas.number /= #100 pas.number
scoreboard players operation $setZ_2 pas.number += $setZ_3 pas.number
scoreboard players operation $setZ_2 pas.number *= $setZ pas.number

scoreboard players operation $setZ_3 pas.number = $nz pas.number
scoreboard players operation $setZ_3 pas.number *= $ny pas.number
scoreboard players operation $setZ_3 pas.number /= #100 pas.number
scoreboard players operation $setZ_3 pas.number *= $1-cos pas.number
scoreboard players operation $setZ_3 pas.number /= #100 pas.number
scoreboard players operation $setZ_4 pas.number = $nx pas.number
scoreboard players operation $setZ_4 pas.number *= $bodySin pas.number
scoreboard players operation $setZ_4 pas.number /= #100 pas.number
scoreboard players operation $setZ_4 pas.number *= #-1 pas.number
scoreboard players operation $setZ_3 pas.number += $setZ_4 pas.number
scoreboard players operation $setZ_3 pas.number *= $setY pas.number


#set xyz
scoreboard players operation $setX pas.number = $setX_ pas.number
scoreboard players operation $setX pas.number += $setX_2 pas.number
scoreboard players operation $setX pas.number += $setX_3 pas.number
scoreboard players operation $setX pas.number /= #100 pas.number

scoreboard players operation $setY pas.number = $setY_ pas.number
scoreboard players operation $setY pas.number += $setY_2 pas.number
scoreboard players operation $setY pas.number += $setY_3 pas.number
scoreboard players operation $setY pas.number /= #100 pas.number

scoreboard players operation $setZ pas.number = $setZ_ pas.number
scoreboard players operation $setZ pas.number += $setZ_2 pas.number
scoreboard players operation $setZ pas.number += $setZ_3 pas.number
scoreboard players operation $setZ pas.number /= #100 pas.number