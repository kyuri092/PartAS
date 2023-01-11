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
# 例: 一番近くにいるアーマースタンド1体に**pas.AS**タグを付ける
tag @e[type=armor_stand, limit=1, sort=nearest] add pas.AS
```

・元に戻したい場合は、アーマースタンドのpas.ASタグを外します。
```mcfunction
# 例: 一番近くにいるアーマースタンド1体からpas.ASタグを外す
tag @e[type=armor_stand, limit=1, sort=nearest] remove pas.AS
```
