# coding: utf-8

# https://bayashi.net/diary/2015/0224
[
  [
    "(よく|頻繁に)(編集|修正)されているファイルを(リスト|表示)する",
    'git log --name-only --pretty="format:" | grep -ve "^$" | sort | uniq -c | sort -r | more'
  ],
  [
    "ファイルの(編集|修正)のランキングを(リスト|表示)する",
    'git log --name-only --pretty="format:" | grep -ve "^$" | sort | uniq -c | sort -r | more'
  ],
]
