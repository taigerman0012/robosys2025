# robosys2025
ロボットシステム学課題１

## 累乗コマンド
![test](https://github.com/taigerman0012/robosys2025/actions/workflows/test.yml/badge.svg)

標準入力から受け取った数字から、指定した数の累乗を計算し標準出力に表示するコマンドです。

## インストール方法
以下のコマンドを順に実行し、リポジトリをコピーしたいディレクトリでクローンして下さい。

```
$https://github.com/taigerman0012/robosys2025.git
```
```
$cd robosys2025
```
```
$chmod +x report
```

## 使用方法
- ./report [底] [最大乗数]を入力する
- 底と最大乗数の間にはスペースを入れる

## 実行例
- 2の1乗から10乗までを表示する場合

```
$./report 2 10
```

--- 2.0 の累乗テーブル ---

2.0 ^ 1 = 2.0

2.0 ^ 2 = 4.0

...

2.0 ^ 10 = 1,024.0

- 1.5の5乗までを表示する場合

```
$./report 1.5 5
```

--- 1.5 の累乗テーブル ---

1.5 ^ 1 = 1.5

1.5 ^ 2 = 2.25

...

1.5 ^ 5 = 7.59375

## 必要なソフトウェア
- Python 
   テスト済みバージョン: 3.7 ~ 3.13

## テスト環境
- Ubuntu 22.04.5 LTS	

## ライセンス

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージは，Ryuichi Ueda由来のコード（© 2025 Ryuichi Ueda）を利用しています．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/slides_marp/blob/master/robosys2025/lesson5.md)
- © 2025 Taiga Doi
