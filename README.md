# robosys2023
ロボットシステム学の練習リポジトリ

## コマンド
### plus
[![test](https://github.com/asutosato/robosys2023/actions/workflows/text.yml/badge.svg)](https://github.com/asutosato/robosys2023/actions/workflows/text.yml)

標準入力から読み込んだ数値を足す。

-実行例
```
$ seq 5 | ./plus
  15
```
seqコマンドで出力された1から5を足し合わせた結果が出力される。

### minus

標準入力から読み込んだ数値を引く。

-実行例
```
$ seq 5 | ./minus
  -15
```
seqコマンドで出力された1から5を0から引いていった結果が出力される。

### average

標準入力から読み込んだ数値の平均値を求める。

-実行例
```
$ seq 5 | ./average
  3.0
```
seqコマンドで出力された1から5の平均値が出力される。

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
