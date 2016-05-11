# coding: utf-8
if params.length > 0
  [
    [
      "現在使われているタグを(リスト|表示)する",
      'git tag'
    ],
    [
      "現在のコミットIDに「(#{params.join('|')})」というタグを関連付けする",
      'git tag #{$1}'
    ],
    [
      "「(#{params.join('|')})」というタグを現在のコミットIDに関連付けする",
      'git tag #{$1}'
    ],
    [
      "「(#{tags.join('|')})」というタグを(削除する|消す)",
      'git tag -d #{$1}'
    ],
    [
      "「(#{tags.join('|')})」というタグのついたコミットを表示する",
      'git show #{$1}'
    ],
  ]
else
  nil
end
