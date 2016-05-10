# coding: utf-8

patterns != ['##PATTERN##'] ?
  [
    [
      "「(#{files.join('|')})」ファイルを(#{numbers.join('|')})分前の(もの|バージョン)と比較する",
      'git diff HEAD "@{#{$2} minutes ago}" #{$1}'
    ],
    [
      "「(#{files.join('|')})」ファイルが(#{numbers.join('|')})分前から(変化した|変わった)ところを(表示する|見る)",
      'git diff HEAD "@{#{$2} minutes ago}" #{$1}'
    ],
    [
      "「(#{files.join('|')})」ファイルを(#{numbers.join('|')})時間前の(もの|バージョン)と比較する",
      'git diff HEAD "@{#{$2} hours ago}" #{$1}'
    ],
    [
      "「(#{files.join('|')})」ファイルが(#{numbers.join('|')})時間前から(変化した|変わった)ところを(表示する|見る)",
      'git diff HEAD "@{#{$2} hours ago}" #{$1}'
    ],
    [
      "「(#{files.join('|')})」ファイルを(#{numbers.join('|')})日前の(もの|バージョン)と比較する",
      'git diff HEAD "@{#{$2} days ago}" #{$1}'
    ],
    [
      "「(#{files.join('|')})」ファイルが(#{numbers.join('|')})日前から(変化した|変わった)ところを(表示する|見る)",
      'git diff HEAD "@{#{$2} days ago}" #{$1}'
    ],
    [
      "(#{numbers.join('|')})分前の「(#{files.join('|')})」ファイルと現在の(もの|バージョン)を比較する",
      'git diff HEAD "@{#{$1} minutes ago}" #{$2}'
    ],
    [
      "(#{numbers.join('|')})時間前の「(#{files.join('|')})」ファイルと現在の(もの|バージョン)を比較する",
      'git diff HEAD "@{#{$1} hours ago}" #{$2}'
    ],
    [
      "(#{numbers.join('|')})日前の「(#{files.join('|')})」ファイルと現在の(もの|バージョン)を比較する",
      'git diff HEAD "@{#{$1} days ago}" #{$2}'
    ],
    [
      "(#{numbers.join('|')})分前からの「(#{files.join('|')})」ファイル(の変化|が(変わった|変更された)ところ)を(表示する|見る)",
      'git diff HEAD "@{#{$1} minutes ago}" #{$2}'
    ],
    [
      "(#{numbers.join('|')})時間前からの「(#{files.join('|')})」ファイル(の変化|が(変わった|変更された)ところ)を(表示する|見る)",
      'git diff HEAD "@{#{$1} hours ago}" #{$2}'
    ],
    [
      "(#{numbers.join('|')})日前からの「(#{files.join('|')})」ファイル(の変化|が(変わった|変更された)ところ)を(表示する|見る)",
      'git diff HEAD "@{#{$1} days ago}" #{$2}'
    ],
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
    [
      "ひとつ前のバージョンの「(#{files.join('|')})」ファイルと現在のものを比較する",
      'git log --oneline #{$1} | head -2 | tail -1 | awk \'{print $1}\' | xargs -J xxx git diff xxx #{$1}'
    ],
  ] : [] +
      [
        [
          "(#{numbers.join('|')})分前から(変化した|変わった|変更された)ファイルをリストする",
          'git-changed \'#{$1} minutes ago\''
        ],
        [
          "(#{numbers.join('|')})時間前から(変化した|変わった|変更された)ファイルをリストする",
          'git-changed \'#{$1} hours ago\''
        ],
        [
          "(#{numbers.join('|')})日前から(変化した|変わった|変更された)ファイルをリストする",
          'git-changed \'#{$1} days ago\''
        ],
        [
          "(#{numbers.join('|')})分前から(変化してない|変わってない|変わらない|変更されてない)ファイルをリストする",
          'git-unchanged \'#{$1} minutes ago\''
        ],
        [
          "(#{numbers.join('|')})時間前から(変化してない|変わってない|変わらない|変更されてない)ファイルをリストする",
          'git-unchanged \'#{$1} hours ago\''
        ],
        [
          "(#{numbers.join('|')})日前から(変化してない|変わってない|変わらない|変更されてない)ファイルをリストする",
          'git-unchanged \'#{$1} days ago\''
        ],
      ]
