# PartAS
編集中

アーマースタンドにさらに自由なポーズをさせることができます。

## 動作確認済みのバージョン

1.19.2

## 何ができるのか

アーマースタンドのNBTのPose.Bodyを動かした際に、手足がついていくようになり、横に倒したようなポーズなどをさせることができます。

## 使い方

・適応させるには、適応させたいアーマースタンドに**pas.AS**タグを付けます。
```mcfunction
# 例: 一番近くにいるアーマースタンド1体にpas.ASタグを付ける
tag @e[type=armor_stand, limit=1, sort=nearest] add pas.AS
```

- **pas.AS**タグの付いたアーマースタンドを召喚することもできます。
```mcfunction
# pas.ASタグの付いたアーマースタンドを召喚
function pas:option/summon/part_as
```

- 元に戻したい場合は、アーマースタンドの**pas.AS**タグを外します。
```mcfunction
# 例: 一番近くにいるアーマースタンド1体からpas.ASタグを外す
tag @e[type=armor_stand, limit=1, sort=nearest] remove pas.AS
```

- ポーズをさせるには、pas.ASタグを付けたアーマースタンドのPoseを設定します。
```mcfunction
# 例: 一番近くにいるpas.ASタグの付いたアーマースタンド1体のPoseにpasストレージのlieデータをコピー
data modify entity @e[tag=pas.AS, limit=1, sort=nearest] Pose set from storage pas lie
```
