# GitHelp

Gitを超便利に使うシステム

### 解決したい問題

* Gitの使い方がさっぱりわからないこと
* ちょっとしたことでもどうコマンドを使えば良いのかわからないこと

以下のような処理をGitでどうやって実行するかを教えてくれる

* example.txtは3日前からどう変わった?
* package.jsonからcoffeeという名前が消えたのはいつ?

### 利用例

* 「example 3 変化」のような文字列を指定して```githelp```コマンドを起動すると以下のような解が提示される

    ```
    % githelp example 3 変化
    (1) example.txtの3日前からの変化を調べる
    git log --since='3 days ago' --oneline \
    | tail -1 | ruby -lane 'puts $_.split(/ /).first' \
    | xargs -J xxx git diff xxx example.txt
    (2) .....
    ....
    %
    ```

### 実装

* [ExpandHelp](https://github.com/masui/expand_ruby)を利用
* [```data```](https://github.com/masui/GitHelp/tree/master/data)ディレクトリの下に問題パタンと解決コマンドを書く

    

  