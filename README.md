# RoboSys2023.Ver2
[![test](https://github.com/saa-waa0050/robosys2023.ver2/actions/workflows/test.yml/badge.svg)](https://github.com/saa-waa0050/robosys2023.ver2/actions/workflows/test.yml)

このリポジトリは千葉工業大学　ロボットシステムの授業用・学習用リポジトリです。
（robosys2023.ver1は理解不足と操作ミスにより訳が分からなくなったので、ver2で新設しました...2023/11/28）

## 機能について
- 入力文章から数値を抽出し出力
- 入力数値の総和の出力
- 入力数値の総乗の出力
-  入力数値の平均値の出力
- 出力結果を別ファイルへ保存

## インストール
ターミナルの以下のコードを入力し、実行してください。
```
git clone https://github.com/saa-waa0050/robosys2023.ver2.git
```

## 各機能の使い方
### 入力文章から数値を抽出

```
./normalize < ファイル名
```
ファイル内の数値（整数、浮動小数点数、負数に対応）を抽出し、出力します。
- 実行例

`suti.txt`
```
数値　[4:5.5:-2:-2.2:6]
```

`コマンド`
```
./normalize < suti.txt
```

`結果`
```
4
5.5
-2
-2.2
6
```
また、出力結果は`ans_log.txt`に記録されます。

## 入力数値の総和

```
./plus < ファイル名
```

ファイル内の数値の総和を出力します。

```
./normalize < ファイル名 |./plus
```

`./normalize`と組みわせることで、ファイルから数値を抽出し、抽出したものの総和を出力することが出来ます。

```
seq 数値 |./plus
```

`seq 数値`を使用することで、数値までの階和を出力することが出来ます。

- 実行例

`suti.txt`
```
数値　[4:5.5:-2:-2.2:6]
```

`コマンド`
```
./normalize < suti.txt |./plus
```

`結果`
```
11.3
```



`コマンド`
```
seq 5 |./plus
```

`結果`
```
15
```

また、出力結果は`ans_log.txt`に記録されます。

## 入力数値の総乗

```
./times < ファイル名
```

ファイル内の数値の総乗を出力します。

```
./normalize < ファイル名 |./times
```

`./normalize`と組みわせることで、ファイルから数値を抽出し、抽出したものの総乗を出力することが出来ます。

```
seq 数値 |./plus
```

`seq 数値`を使用することで、数値までの階乗を出力することが出来ます。

- 実行例

`suti.txt`
```
数値　[4:5.5:-2:-2.2:6]
```

`コマンド`
```
./normalize < suti.txt |./times
```

`結果`
```
580
```



`コマンド`
```
seq 5 |./times
```

`結果`
```
120
```

また、出力結果は`ans_log.txt`に記録されます。

## 入力数値の平均

```
./avg < ファイル名
```

ファイル内の数値の平均値を出力します。

```
./normalize < ファイル名 |./avg
```

`./normalize`と組みわせることで、ファイルから数値を抽出し、抽出したものの平均値を出力することが出来ます。

- 実行例

`suti.txt`
```
数値　[4:5.5:-2:-2.2:6]
```

`コマンド`
```
./normalize < suti.txt |./times
```

`結果`
```
22.26
```

また、出力結果は`ans_log.txt`に記録されます。

## 出力結果を別ファイルへ保存
出力の結果は`ans_log.txt`に保存されます。

- 実行例

`suti.txt`
```
数値　[4:5.5:-2:-2.2:6]
```

`コマンド`
```
./normalize < suti.txt |./times
```

`結果`
```
22.26
```

`ans_log.txt`
```
4
5.5
-2
-2.2
6
sum-> 11.3
----------
```

## 必要なソフトウェア
* Python(テスト済み)
  - [x] ver3.7
  - [x] ver3.8
  - [x] ver3.9
  - [x] ver3.10　

## テスト環境
* Ubuntu20.24 on Windows)

## 権利
- このソフトウェアパッケージは、３条項BSDライセンスの下、再配布及び使用が許可されます。
- © 2023 Shusuke Osawa
