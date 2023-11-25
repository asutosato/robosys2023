# robosys2023
ロボットシステム学の練習リポジトリ

## コマンド
### plus
[![test](https://github.com/asutosato/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/asutosato/robosys2023/actions/workflows/test.yml)

標準入力から読み込んだ数値を足す。

-実行例
```
$ seq 5 | ./plus
  15
```
seqコマンドで出力された1から5を足し合わせた結果が出力される。

```
#nums 数字を縦に並べて入れたファイル
2
7
3
6
8
```
```
$ cat nums | ./plus
  26
```
catコマンドを用いてファイル内の数字を足し合わせて出力することもできる。


### minus

標準入力から読み込んだ数値を引く。

-実行例
```
$ seq 5 | ./minus
  -15
```
seqコマンドで出力された1から5を0から引いていった結果が出力される。
plusコマンドと同様に、catコマンドを用いてファイル内の数字を0から引いていき出力することもできる。


### average

標準入力から読み込んだ数値の平均値を求める。

-実行例
```
$ seq 5 | ./average
  3.0
```
seqコマンドで出力された1から5の平均値が出力される。
plusコマンドと同様に、catコマンドを用いてファイル内の数字から平均値を求め出力することもできる。


## 必要なソフトウェア
* Python
  * テスト済み: 3.7~3.10

## テスト環境
* Ubuntu

## 著作権
* このソフトウェアパッケージは、3条項BSDライセンスの下、再配布および使用が許可されます。
* このパッケージのコードは、下記のスライド(CC-BYSA 4.0 by Ryuiti Ueda)のものを本人の許可を得て自身の著作としたものです。
   * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

©2023　Asuto Sato
