# PartAS
編集中

アーマースタンドにさらに自由なポーズをさせることができます。

## 動作確認済みのバージョン

1.19.2

## 何ができるのか

アーマースタンドのNBTのPose.Bodyを動かした際に、手足がついていくようになり、横に倒したようなポーズなどをさせることができます。

## 使い方

- 適応させるには、適応させたいアーマースタンドに**pas.AS**タグを付けます。
```mcfunction
tag @e[type=armor_stand, limit=1, sort=nearest] add pas.AS
```


- **pas.AS**タグの付いたアーマースタンドを召喚することもできます。
```mcfunction
function pas:option/summon/part_as
```


- 元に戻したい場合は、アーマースタンドの**pas.AS**タグを外します。
```mcfunction
tag @e[type=armor_stand, limit=1, sort=nearest] remove pas.AS
```


- ポーズをさせるには、**pas.AS**タグを付けたアーマースタンドのPoseを設定します。
```mcfunction
data modify entity @e[tag=pas.AS, limit=1, sort=nearest] Pose set from storage pas lie
```
