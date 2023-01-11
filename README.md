# PartAS

アーマースタンドにさらに自由なポーズをさせることができます。

## 動作確認済みのバージョン

1.19.2

## 何ができるのか

アーマースタンドのNBTのPose.Bodyを動かした際に、手足がついていくようになり、横に倒したようなポーズなどをさせることができます。

## 使い方

適応させたいアーマースタンドにpas.ASタグを付けます。

```mcfunction
# 例: 一番近くにいるアーマースタンド1体にpas.ASタグを付ける
tag @e[type=armor_stand, limit=1, sort=nearest] pas.AS
```
