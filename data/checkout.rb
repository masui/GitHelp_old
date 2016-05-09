# coding: utf-8
[
  [
    "最新の状態に戻す",
    'git checkout #{branch}'
  ],
  [
    "(#{numbers.join('|')})分前の状態に一時的に戻す",
    'git log --until="#{$1} minutes ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git checkout xxx'
  ],
  [
    "(#{numbers.join('|')})時間前の状態に一時的に戻す",
    'git log --until="#{$1} hours ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git checkout xxx'
  ],
  [
    "(#{numbers.join('|')})日前の状態に一時的に戻す",
    'git log --until="#{$1} days ago" --oneline | head -1 | awk \'{print $1}\' | xargs -J xxx git checkout xxx'
  ]
]
