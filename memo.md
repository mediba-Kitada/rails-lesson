## overview

- Dave Thomas
	- 達人になるためには？？
	- 1年にひとつ新しい言語を学ぼう
- DHH
	- 自分たちのプロダクトにrailsを開発 
	- 秀才タイプ
		- 色々な名書からヒントを得た、取り入れた
	- patern of enterprise architecture

### rails

### ruby

- irb
- ライブラリのドキュメントをよく見る
- 四の五の言わずに一度目を通す
- 整数
	- メモリの許す限り演算
- データには型がある
- 変数には、型がない
- $
	- グローバル変数
- 定数
	- 再代入可能
- 配列
	- 要素に型は無い
- シンボル
	- データではないので、高速に処理される
	- JSライクに書ける
	- インデックスである
	- rubyハッキングガイド
	- Cがわかると面白い..

- 一行の取り扱い

```
irb(main):010:0* a = 2 + 3 +
irb(main):011:0* 4
=> 9
irb(main):012:0> a = 2 + 3
=> 5
```

- コーディング規約
	- cookpad社がデファクト?
	- スタイルガイド

- 入出力
	- p
		- PG用のデバッガ

- 引数
	- 最後の引数がハッシュ場合、{}を省力できる

- イテレータ
	- プログラマ的にどちらもいいものは処理系に実装する
	- 意味が伝わるプログラムが書ける

- 名前空間
	- 組み込みライブラリ
		- require不要
	- 添付ライブラリ
		- requreが必要
- Objectクラス
	- 事実上の基底クラスだが...
	- BasicObjectクラスは、拡張禁止のルール
- refiment

### オブジェクト指向

- 会社はオブジェクト指向だ...!

## クイズ

- Q1
	- デバッグの際、何度目のルールかを確認する
- Q2
	- オプションとしてメッセージを表示する
- Q3
	- 曜日コードを検査する
- Q4
	- エンターが押されるまで標準入力を受付け、文字列連携する。
	- エンターが押された文字列を返却
- Q5
	- sqlit関数
- P21
	- 先頭は英字小文字か??
	- 2文字以降がある場合、英数字か?
	- 最後に!または?がついても良いか?

```
/^[a-z_]+\w?!/
```

- リファレンス嫁

## rails

- railsコマンド応答しない場合は、以下のプロセスをkill

```
[user07@PC005] 16-03-22 14:10:38 (git)-[master] ~/rails-lesson/todo_app
% ps aux |grep spring
user07          89725   0.0  0.0  2434840    740 s004  R+    2:10PM   0:00.00 grep spring
user07          84406   0.0  0.5  2484584  21520   ??  S     2:03PM   0:00.43 spring server | todo_app | started 7 mins ago
```

- railsコンソールを用いたデータ投入

```
irb(main):005:0> u  = User.new(name: 'kai')
=> #<User id: nil, name: "kai", created_at: nil, updated_at: nil>
irb(main):006:0> u.save
   (0.2ms)  begin transaction
     SQL (0.8ms)  INSERT INTO "users" ("name", "created_at", "updated_at") VALUES (?, ?, ?)  [["name", "kai"], ["created_at", "2016-03-22 06:54:14.662449"], ["updated_at", "2016-03-22 06:54:14.662449"]]
	    (3.2ms)  commit transaction
		=> true
```
