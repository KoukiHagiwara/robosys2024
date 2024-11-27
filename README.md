# robosys2024
ロボットシステム学授業用

#インストール方法
以下のコマンドをローカル環境にインストールしてください
```
$ git clone https://github.com/KoukiHagiwara/robosys2024.git
```

# plusコマンド
[![test](https://github.com/KoukiHagiwara/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/KoukiHagiwara/robosys2024/actions/workflows/test.yml)
- 入力された数値を加算させるコマンド
`seq`の後に数値を入力し、`./plus`を実行する。
- 実行例
1から5までの和を計算させる。
```
seq 5 | ./plus
```
- 実行結果
```
15
```
# factorialコマンド
- 入力された数値の階乗を計算させるコマンド
`./factorial`と入力した後に空白を開けて数値を入力し、実行する。
- 実行例
5の階乗を計算させる。
```
./factorial 5
```
- 実行結果
```
120
```
# 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.10
# テスト環境
- Ubuntu 22.04 LTS

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys_2024](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2024)
- © 2024 Hagiwara Kouki

