# GitHelp

**Gitのコマンドの使いこなしを支援**

### 解決したい問題

* Gitの使い方や引数指定方法がさっぱりわからないこと
* ちょっとしたことでもどうコマンドを組み合わせれば良いのかわからないこと

以下のような処理をGitでどうやって実行するかを教えてくれる

* example.txtは3日前からどう変わった?
* 3日前のexample.txtを見たい
* package.jsonからcoffeeという名前が消えたのはいつ?
* ここ1週間ぐらい変更されてないファイルは?
* 最近最も大量に修正したファイルはどれだっけ?

### 利用例

* ```README``` ```8``` ```比較``` のような引数を指定して```githelp```コマンドを起動すると以下のような候補が提示される

```
$ githelp README 8 比較
[0] 「README.md」ファイルを8分前のものと比較する
   % git diff HEAD "@{8 minutes ago}" README.md
[1] 「README.md」ファイルを8時間前のものと比較する
   % git diff HEAD "@{8 hours ago}" README.md
[2] 「README.md」ファイルを8日前のものと比較する
   % git diff HEAD "@{8 days ago}" README.md
$
```

* ```-x``` オプションで数字を指定すると実行できる


```
$ githelp README 8 比較 -x2
diff --git a/README.md b/README.md
index 862f185..34c8907 100644
--- a/README.md
+++ b/README.md
@@ -1,90 +1,3 @@
 # GitHelp
 
-**Gitのコマンドの使いこなしを支援する**
-
-### 解決したい問題
-
-* Gitの使い方や引数指定方法がさっぱりわからないこと
-* ちょっとしたことでもどうコマンドを組み合わせれば良いのかわからないこと
...
```

* ```-i``` オプションを指定すると対話的に選択できる
* 引数なしで```githelp```を起動するとリストが表示される


### 実装

* [re_expand](https://github.com/masui/expand_ruby)を利用
* [ExpandHelp論文](http://www.interaction-ipsj.org/archives/paper2012/data/Interaction2012/oral/data/pdf/12INT012.pdf)
* [```data/```](https://github.com/masui/GitHelp/tree/master/data)ディレクトリの下に問題パタンと解決コマンドを書く
   * ワンライナーで無理な場合は ```exe/``` の下にコマンドを用意する

### インストール

```
% gem install githelp
```

### お願い

データが全然足りないので、足すべきデータがあればお願いいたします。(プルリク希望)

### 考察

* ヘルプはSiriみたいなのでやるのがトレンドかもしれないが、
自分が何をやりたいのかはっきりわかってない場合でも使えるし、
正しいセンテンスを正確に言う必要がないから楽だと思う
* たとえば ```githelp 削除``` と言えば削除関連で何ができるのかわかる
* Gitは単なる適用例であり、応用範囲は広い

