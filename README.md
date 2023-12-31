# RoboSys2023.Ver2
[![test](https://github.com/saa-waa0050/robosys2023.ver2/actions/workflows/test.yml/badge.svg)](https://github.com/saa-waa0050/robosys2023.ver2/actions/workflows/test.yml)

このリポジトリは千葉工業大学　ロボットシステム学の授業用・学習用リポジトリです。
## 機能について
利用できる機能は以下の通りです。
>- 入力文章から数値を抽出し出力
>- 入力数値の総和の出力
>- 入力数値の総乗の出力
>-  入力数値の平均値の出力
>- 出力結果を別ファイルへ保存

<br>

## インストール
インストールしたいディレクトリで、以下のコードを実行してください。
>```
>git clone https://github.com/saa-waa0050/robosys2023.ver2.git
>```
>実行結果
>```
>Cloning into 'robosys2023.ver2'...
>remote: Enumerating objects: 353, done.
>remote: Counting objects: 100% (113/113), done.
>remote: Compressing objects: 100% (78/78), done.
>remote: Total 353 (delta 69), reused 65 (delta 29), pack-reused 240
>Receiving objects: 100% (353/353), 97.77 KiB | 1.46 MiB/s, done.
>Resolving deltas: 100% (217/217), done.
>```
>このような文章が返ってくればインストールは完了です。

コマンドが入ったディレクトリに移動するため、続けて以下のコードを実行してください。
```
cd robosys.ver2/
```
>このディレクトリで、以下に紹介するコマンドを実行することで、各機能を利用することができます。

>実行例
>```bash:test.bash
>$ cd robosys.ver2/
>robosys.ver2/$ seq 5 |./plus
>15
>```

<br>

## 各機能の使い方

### 入力文章から数値を抽出
>```
>./normalize < ファイル名
>```
>ファイル内の数値（整数、浮動小数点数、負数に対応）を抽出し、出力します。

>####  <font color = brack>実行例
>`suti.txt`
>```
>数値　[4:5.5:-2:-2.2:6]
>```
>`コマンド`
>```
>./normalize < suti.txt
>```
>`結果`
>```
>4
>5.5
>-2
>-2.2
>6
>```
>また、出力結果は`ans_log.txt`に記録されます。

<br>

### 入力数値の総和
>```
>./plus < ファイル名
>```
>ファイル内の数値の総和を出力します。
>
>####  <font color = black>抽出した数値の総和
>```
>./normalize < ファイル名 |./plus
>```
>
>`./normalize`と組みわせることで、ファイルから数値を抽出し、抽出したものの総和を出力することが出来ます。
>####  <font color = black>階和の出力
>```
>seq 数値 |./plus
>```
>`seq 数値`を使用することで、数値までの階和を出力することが出来ます。

>####  <font color = black>実行例
>`suti.txt`
>```
>数値　[4:5.5:-2:-2.2:6]
>```
>
>`コマンド`
>```
>./normalize < suti.txt |./plus
>```
>`結果`
>```
>11.3
>```
<br>

>`コマンド`
>```
>seq 5 |./plus
>```
>`結果`
>```
>15
>```
>また、出力結果は`ans_log.txt`に記録されます。


### 入力数値の総乗
>```
>./times < ファイル名
>```
>ファイル内の数値の総乗を出力します。
>
>#### <font color = black>抽出した数値の総乗
>```
>./normalize < ファイル名 |./times
>```
>
> `./normalize`と組みわせることで、ファイルから数値を抽出し、抽出したものの総乗を出力することが出来ます。
>####  <font color = black>階乗の出力
>```
>seq 数値 |./times
>```
>`seq 数値`を使用することで、数値までの階乗を出力することが出来ます。

>####  <font color = black>実行例
>`suti.txt`
>```
>数値　[4:5.5:-2:-2.2:6]
>```
>
>`コマンド`
>```
>./normalize < suti.txt |./times
>```
>`結果`
>```
>580
>```
<br>

>`コマンド`
>```
>seq 5 |./times
>```
>`結果`
>```
>120
>```
>また、出力結果は`ans_log.txt`に記録されます。


### 入力数値の平均値
>```
>./avg < ファイル名
>```
>ファイル内の数値の平均値を出力します。
>
>####  <font color = black>抽出した数値の平均値
>```
>./normalize < ファイル名 |./avg
>```
>
>`./normalize`と組みわせることで、ファイルから数値を抽出し、抽出したものの平均値を出力することが出来ます。

>####  <font color = black>実行例
>`suti.txt`
>```
>数値　[4:5.5:-2:-2.2:6]
>```
>
>`コマンド`
>```
>./normalize < suti.txt |./avg
>```
>`結果`
>```
>2.26
>```
>また、出力結果は`ans_log.txt`に記録されます。

### 出力結果を別ファイルへ保存
>出力の結果は`ans_log.txt`に保存されます。

>  <font color = black>実行例
>
>`suti.txt`
>```
>数値　[4:5.5:-2:-2.2:6]
>```
>`コマンド`
>```
>./normalize < suti.txt |./times
>```
>`結果`
>```
>22.26
>```
>`ans_log.txt`
>```
>4
>5.5
>-2
>-2.2
>6
>sum-> 11.3
>----------
>```
>このように`./normalize`と各計算を組み合わせることで、`ans_llog.txt`の中身がわかりやすくなるので、基本組み合わせて使うことをお勧めします。

<br>

## 必要なソフトウェア
### Python(テスト済み)
  >- [x] ver3.7
  >- [x] ver3.8
  >- [x] ver3.9
  >- [x] ver3.10
## テスト環境
* Ubuntu20.24 on Windows

## 権利
- このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布及び使用が許可されます。
- © 2023 Shusuke Osawa
