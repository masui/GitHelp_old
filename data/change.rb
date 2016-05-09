# coding: utf-8

[
  [
    "「(#{files.join('|')})」ファイルを#{mins}分前(のものと比較する|から(変化した|変わった)ところを(表示する|見る))",
    'git log --until="#{$2} minutes ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],
  [
    "「(#{files.join('|')})」ファイルを#{hours}時間前(のものと比較する|から(変化した|変わった)ところを(表示する|見る))",
    'git log --until="#{$2} hours ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],
  [
    "「(#{files.join('|')})」ファイルを#{days}日前(のものと比較する|から(変化した|変わった)ところを(表示する|見る))",
    'git log --until="#{$2} days ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],
  [
    "#{mins}分前の「(#{files.join('|')})」ファイルと現在のものを比較する",
    'git log --until="#{$1} minutes ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$2}'
  ],
  [
    "#{hours}時間前の「(#{files.join('|')})」ファイルと現在のものを比較する",
    'git log --until="#{$1} hours ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$2}'
  ],
  [
    "#{days}日前の「(#{files.join('|')})」ファイルと現在のものを比較する",
    'git log --until="#{$1} days ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$2}'
  ],
  [
    "#{mins}分前からの「(#{files.join('|')})」ファイル(の変化|が変わったところ)を(表示する|見る)",
    'git log --until="#{$1} minutes ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$2}'
  ],
  [
    "#{hours}時間前からの「(#{files.join('|')})」ファイル(の変化|が変わったところ)を(表示する|見る)",
    'git log --until="#{$1} hours ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$2}'
  ],
  [
    "#{days}日前からの「(#{files.join('|')})」ファイル(の変化|が変わったところ)を(表示する|見る)",
    'git log --until="#{$1} days ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$2}'
  ],

  #######
  [
    "「(#{files.join('|')})」ファイルをひとつ前のコミットと比較する",
    'git diff HEAD^ #{$1}'
  ],
  [
    "「(#{files.join('|')})」ファイルをふたつ前のコミットと比較する",
    'git diff HEAD^^ #{$1}'
  ],
  [
    "「(#{files.join('|')})」ファイルをひとつ前のバージョンと比較する",
    'git log --oneline #{$1} | head -2 | tail -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
  ],

  #######
  [
    "#{mins}分前から(変化した|変わった|変更された)ファイルをリストする",
    'changed \'#{$1} minutes ago\''
  ],
  [
    "#{hours}時間前から(変化した|変わった|変更された)ファイルをリストする",
    'changed \'#{$1} hours ago\''
  ],
  [
    "#{days}日前から(変化した|変わった|変更された)ファイルをリストする",
    'changed \'#{$1} days ago\''
  ],
  [
    "#{mins}分前から(変化してない|変わってない|変わらない|変更されてない)ファイルをリストする",
    'unchanged \'#{$1} minutes ago\''
  ],
  [
    "#{hours}時間前から(変化してない|変わってない|変わらない|変更されてない)ファイルをリストする",
    'unchanged \'#{$1} hours ago\''
  ],
  [
    "#{days}日前から(変化してない|変わってない|変わらない|変更されてない)ファイルをリストする",
    'unchanged \'#{$1} days ago\''
  ],
]
