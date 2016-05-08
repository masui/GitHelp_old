# coding: utf-8
[
  [
    "(#{files.join('|')})というファイルを(1|2|3|4|5|6|7|8|9|10|20|30|40|50)分前のものと比較する",
    'git log --until="#{$2} minutes ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],
  [
    "(#{files.join('|')})というファイルが(1|2|3|4|5|6|7|8|9|10|20|30|40|50)分前から(変化した|変わった)ところを(表示する|見る)",
    'git log --until="#{$2} minutes ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],
  [
    "(1|2|3|4|5|6|7|8|9|10|20|30|40|50)分前から(#{files.join('|')})というファイル(の変化|が変わったところ)を(表示する|見る)",
    'git log --until="#{$1} minutes ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$2}'
  ],

  [
    "(#{files.join('|')})というファイルを(1|2|3|4|5|6|7)時間前のものと比較する",
    'git log --until="#{$2} hours ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],
  [
    "(#{files.join('|')})というファイルが(1|2|3|4|5|6|7)時間前から(変化した|変わった)ところを(表示する|見る)",
    'git log --until="#{$2} hours ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],
  [
    "(1|2|3|4|5)時間前から(#{files.join('|')})というファイルが(変化した|変わった)ところを(表示する|見る)",
    'git log --until="#{$1} hours ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$2}'
  ],

  [
    "(#{files.join('|')})というファイルを(1|2|3|4|5)日前のものと比較する",
    'git log --until="#{$2} days ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],
  [
    "(#{files.join('|')})というファイルが(1|2|3|4|5)日前から(変化した|変わった)ところを(表示する|見る)",
    'git log --until="#{$2} days ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],
  [
    "(1|2|3|4|5)日前から(#{files.join('|')})というファイルが(変化した|変わった)ところを(表示する|見る)",
    'git log --until="#{$1} days ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$2}'
  ],

  #######
  [
    "(#{files.join('|')})というファイルをひとつ前のコミットと比較する",
    'git diff HEAD^ #{$1}'
  ],
  [
    "(#{files.join('|')})というファイルをひとつ前のバージョンと比較する",
    'git log --oneline #{$1} | head -2 | tail -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],

  #######
  [
    "(1|2|3|4|5|6|7|8|9|10|20|30|40|50)分前から(変化した|変わった)ファイルをリストする",
    'changed \'#{$1} minutes ago\''
  ],
  [
    "(1|2|3|4|5|6|7|8|9|10|20|30|40|50)分前から(変化してない|変わってない|変わらない)ファイルをリストする",
    'unchanged \'#{$1} minutes ago\''
  ],
  [
    "(1|2|3|4|5|6|7|8|9)時間前から(変化した|変わった)ファイルをリストする",
    'changed \'#{$1} hours ago\''
  ],
  [
    "(1|2|3|4|5|6|7|8|9)時間前から(変化してない|変わってない|変わらない)ファイルをリストする",
    'unchanged \'#{$1} hours ago\''
  ],
]
