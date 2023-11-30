# RoboSys2023.Ver2
[![test](https://github.com/saa-waa0050/robosys2023.ver2/actions/workflows/test.yml/badge.svg)](https://github.com/saa-waa0050/robosys2023.ver2/actions/workflows/test.yml)

このリポジトリは千葉工業大学　ロボットシステムの授業用・学習用リポジトリです。
（robosys2023.ver1は理解不足と操作ミスにより訳が分からなくなったので、ver2で新設しました...2023/11/28）

## 機能について
- 入力文章から数値を抽出し出力
- 入力数値の合計値の出力
- 入力数値の総乗の出力
-  入力数値の平均値の出力
- 計算結果を別ファイルへ保存

## インストール
ターミナルの以下のコードを入力し、実行してください。
```ruby:インストール
git clone https://github.com/saa-waa0050/robosys2023.ver2.git
```

## 各機能の使い方
### 入力文章から数値を抽出
```ruby:数値を抽出
./normalize < ファイル名
```
ファイル内の数値（整数、浮動小数点数、負数に対応）を抽出し、出力します。
- 実行例
```c:suti
数値　22:19.5:-1083:10:-90.8
```
```java:コマンド
./normalize < suti
```
```python:結果
22
19.5
-1083
10
-90.8
```
また、出力結果はans_log.txtに記録されます。

## 入力数値の合計
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
