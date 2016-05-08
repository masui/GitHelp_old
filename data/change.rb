# coding: utf-8
[
  [
    "(#{files.join('|')})というファイルの((1|2|3|4|5|6|7|8|9)?(0|1|2|3|4|5|6|7|8|9))分前からの変化を(表示する|見る)",
    'git log --until="#{$2} minutes ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],
  [
    "(#{files.join('|')})というファイルの(1|2|3|4|5)日前からの変化を(表示する|見る)",
    'git log --since="#{$2} days ago" --oneline | tail -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ]
]
