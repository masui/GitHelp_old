# coding: utf-8

# http://koyamay.hatenablog.com/entry/2014/10/06/022654
[
  [
    "これまで追加/削除された行数を表示する",
    'git log --numstat --pretty="%H" | awk \'NF==3 {plus+=$1; minus+=$2} END {printf("+%d, -%d\\\\n", plus, minus)}\''
  ],
]

