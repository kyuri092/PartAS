# PartAS

アーマースタンドにさらに自由なポーズをさせることができます。

## 動作確認済みのバージョン

1.19.2

## 何ができるのか
アーマースタンドのNBTのPose.Bodyを動かした際に、手足がついていくようになり、横に倒したようなポーズなどをさせられるようになります。
![PartAS 14 Pose](https://user-images.githubusercontent.com/69749831/212108134-ef010ef6-5333-4e29-8951-5cb56ec33f5a.png)

## 使い方

- **適応させるには、アーマースタンドにpas.ASタグを付けます。**
```mcfunction
tag @e[type=armor_stand, limit=1, sort=nearest] add pas.AS
```

- **pas.ASタグの付いたアーマースタンドを召喚することもできます。**
```mcfunction
function pas:option/summon/part_as
```

- **元に戻したい場合は、アーマースタンドのpas.ASタグを外します。**
```mcfunction
tag @e[type=armor_stand, limit=1, sort=nearest] remove pas.AS
```

- **ポーズをさせるには、pas.ASタグを付けたアーマースタンドのPoseを設定します。**

```mcfunction
data modify entity @e[tag=pas.AS, limit=1, sort=nearest] Pose set value {Body: [90f, 0f, 0f]}
```

- **また、14種類のポーズをpasストレージ内に用意していますので、自由にご利用ください。**
   - stand, swim, lie, greeting, sprawled, acrobatic, orz, zombie, bridge, handstand, upside_down, blown_off_1, blown_off_2, blown_off_3, blown_off_4

```mcfunction
data modify entity @e[tag=pas.AS, limit=1, sort=nearest] Pose set from storage pas lie
```

## ダウンロード
右の[Releases](https://github.com/kyuri092/PartAS-v1.0.0/releases)から**PartAS**(データパック)と**PartAS-RP**(リソースパック)をダウンロードできます。

## 依存ライブラリ
本データパックは以下のライブラリも同時に入れる必要があります。

赤石愛様:
- [AiMath](https://github.com/Ai-Akaishi/AiMath) - MIT License

## ライセンス
[MIT License](LICENSE)

## 最後に
このデータパックは、アーマースタンド1体に対して8体のエンティティを使用しているなどによって、召喚し過ぎるとすぐに重くなってしまうので注意してください。目安は15体まで、常にポーズを書き換える場合は11体までです。軽量化教えてください。

