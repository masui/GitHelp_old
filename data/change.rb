# coding: utf-8
[
  [
    "(#{files.join('|')})というファイルが(1|2|3|4|5|6|7|8|9|10|20|30|40|50)分前から(の変化|変わったところ)を(表示する|見る)",
    'git log --until="#{$2} minutes ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],
  [
    "(1|2|3|4|5|6|7|8|9|10|20|30|40|50)分前から(#{files.join('|')})というファイル(の変化|が変わったところ)を(表示する|見る)",
    'git log --until="#{$1} minutes ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$2}'
  ],
  [
    "(#{files.join('|')})というファイルが(1|2|3|4|5)日前から(変化した|変わった)ところを(表示する|見る)",
    'git log --since="#{$2} days ago" --oneline | tail -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],
  [
    "(1|2|3|4|5)日前から(#{files.join('|')})というファイルが(変化した|変わった)ところを(表示する|見る)",
    'git log --since="#{$1} days ago" --oneline | tail -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$2}'
  ]
]
