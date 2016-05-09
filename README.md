# GitHelp

Gitの難しいコマンドを簡単に指定する

### 解決したい問題

* Gitの使い方や引数指定方法がさっぱりわからないこと
* ちょっとしたことでもどうコマンドを組み合わせれば良いのかわからないこと

以下のような処理をGitでどうやって実行するかを教えてくれる

* example.txtは3日前からどう変わった?
* package.jsonからcoffeeという名前が消えたのはいつ?
* ここ1週間ぐらい変更されてないファイルは?
* 最近最も大量に修正したファイルはどれだっけ?

### 利用例

* ```README``` ```8時間``` ```比較``` のような引数を指定して```githelp```コマンドを起動すると以下のような解が提示される
* 番号を選んで即実行可能

```
$ githelp | head -14
[0] ブランチをリストする
   % git branch
[1] 最新の状態に戻す
   % git checkout master
[2] 直前のコミットのコメントを修正する
   % git commit --amend
[3] 直前のコミットを取り消す
   % git reset --soft HEAD^
[4] 直前のコミットを完全に取り消す
   % git reset --hard HEAD^
[5] 変更されたファイルをリストする
   % git status
[6] 1分前の状態に一時的に戻す
   % git log --until="1 minutes ago" --oneline | head -1 | awk '{print $1}' | xargs -J xxx git checkout xxx

$ githelp -i README 8時間 比較
[0] 「README.md」ファイルを8時間前のものと比較する
   git log --until="8 hours ago" --oneline | head -1 | awk '{print $1}' | xargs -J xxx git diff xxx README.md
[1] 「README.md」ファイルを18時間前のものと比較する
   git log --until="18 hours ago" --oneline | head -1 | awk '{print $1}' | xargs -J xxx git diff xxx README.md
実行するコマンドの番号を入力して下さい > 0
git log --until="8 hours ago" --oneline | head -1 | awk '{print $1}' | xargs -J xxx git diff xxx README.md
diff --git a/README.md b/README.md
index e3e6c51..c260304 100644
--- a/README.md
+++ b/README.md
@@ -4,8 +4,8 @@ Gitの難しいコマンドを簡単に指定する
 
 ### 解決したい問題
 
-* Gitの使い方<E3><81><8C>さっぱりわからないこと
-* ちょっとしたことでもどうコマンドを使えば良いのかわからないこと
+* Gitの使い方<E3><82><84>引数指定方法<E3><81><8C>さっぱりわからないこと
+* ちょっとしたことでもどうコマンドを組み合わせれば良いのかわからないこと
 
```


### 実装

* [ExpandHelp](https://github.com/masui/expand_ruby)を利用
* [ExpandHelp論文](http://www.interaction-ipsj.org/archives/paper2012/data/Interaction2012/oral/data/pdf/12INT012.pdf)
* [```data```](https://github.com/masui/GitHelp/tree/master/data)ディレクトリの下に問題パタンと解決コマンドを書く

### インストール

```
% git clone git@github.com:masui/GitHelp.git
% cd GitHelp
% bundle install
```

### お願い

データが全然足りないので、こういうのを足せという情報があればお願いいたします。
