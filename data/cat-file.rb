# coding: utf-8
[
  [
    "(#{numbers.join('|')})分前の「(#{files.join('|')})」ファイルを(表示する|見る)",
    'git cat-file -p "@{#{$1} minutes ago}":#{$2}'
  ],
  [
    "(#{numbers.join('|')})時間前の「(#{files.join('|')})」ファイルを(表示する|見る)",
    'git cat-file -p "@{#{$1} hours ago}":#{$2}'
  ],
  [
    "(#{numbers.join('|')})日前の「(#{files.join('|')})」ファイルを(表示する|見る)",
    'git cat-file -p "@{#{$1} days ago}":#{$2}'
  ],
]
