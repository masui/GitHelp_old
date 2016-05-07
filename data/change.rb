# coding: utf-8
[
  [
    "(#{files.join('|')})というファイルの(1|2|3|4|5)日前からの変化を(表示する|見る)",
    'git log --since="#{$2} days ago" --oneline | tail -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ]
]
