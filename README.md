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

* ```example``` ```3日``` ```変化``` のような引数を指定して```githelp```コマンドを起動すると以下のような解が提示される

```
% githelp example 3日 変化
(1) example.txtの3日前からの変化を調べる
git log --since='3 days ago' --oneline \
| tail -1 | ruby -lane 'puts $_.split(/ /).first' \
| xargs -J xxx git diff xxx example.txt
(2) .....
....
%
```
* 番号を選んで即座に実行可能


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
    