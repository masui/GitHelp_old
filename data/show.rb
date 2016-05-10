# coding: utf-8
[
  [
    "「(#{files.join('|')})」ファイルの状況を(表示する|見る)",
    'git show head:#{$1}'
  ],
  [
    "(#{numbers.join('|')})分前の「(#{files.join('|')})」ファイルを(表示する|見る)",
    'git log --until="#{$1} minutes ago" --oneline --format="%h:#{$2}" #{$2} | head -1 | awk \'{print $1}\' | xargs -J xxxxx git cat-file -p xxxxx'
  ],
  [
    "(#{numbers.join('|')})時間前の「(#{files.join('|')})」ファイルを(表示する|見る)",
    'git log --until="#{$1} hours ago" --oneline --format="%h:#{$2}" #{$2} | head -1 | awk \'{print $1}\' | xargs -J xxxxx git cat-file -p xxxxx'
  ],
  [
    "(#{numbers.join('|')})日前の「(#{files.join('|')})」ファイルを(表示する|見る)",
    'git log --until="#{$1} days ago" --oneline --format="%h:#{$2}" #{$2} | head -1 | awk \'{print $1}\' | xargs -J xxxxx git cat-file -p xxxxx'
  ],
]
