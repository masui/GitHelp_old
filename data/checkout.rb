# coding: utf-8
[
  [
    "「(#{branches.join('|')})」ブランチの最新状態に移動する",
    'git checkout #{$1} '
  ],
  [
    "最新の状態に戻す",
    'git checkout #{branch}'
  ],
  [
    "(#{numbers.join('|')})分前の状態に一時的に戻す",
    'git checkout "@{#{$1} minutes ago}"'
  ],
  [
    "(#{numbers.join('|')})時間前の状態に一時的に戻す",
    'git checkout "@{#{$1} hours ago}"'
  ],
  [
    "(#{numbers.join('|')})日前の状態に一時的に戻す",
    'git checkout "@{#{$1} days ago}"'
  ],
  [
    "(#{files.join('|')})が追加されたコミットに一時的に戻す",
    'githelp-fileadded #{$1} | xargs git checkout'
  ],
]
