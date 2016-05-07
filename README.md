# GitHelp

Gitを超便利に使う

### 解決したい問題

* Gitの使い方がさっぱりわからないこと
* ちょっとしたことでもどうコマンドを使えば良いのかわからないこと

### 例

以下のようなちょっとした仕事の解決方法を教えてくれる

* example.txtは3日前からどう変わった?
* package.jsonからcoffeeという名前が消えたのはいつ?

このような処理を実行するGitコマンドを教えてくれる

### 利用例

* [ExpandHelp](https://github.com/masui/expand_ruby)を利用
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
    
 aaaaa
 
    

  