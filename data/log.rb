# coding: utf-8
[
  [
    "(#{files.join('|')})が追加されたコミットの(情報|ログ)を表示する",
    'git log --format="%h" #{$1} | tail -1 | xargs -J xxxx git log xxxx #{$1}'
    # 'githelp-fileadded #{$1} range | xargs git log' ログの範囲は abcde^..abcde みたいに指定する必要があるがこれを生成するのが難しい!
  ],
]
