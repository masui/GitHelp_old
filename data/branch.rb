# coding: utf-8
[
  [
    "ブランチをリストする",
    "git branch"
  ],
  [
    "ブランチのリストを表示する",
    "git branch"
  ],
  [
    "「(#{branches.join('|')})」ブランチに移動する",
    'git checkout #{$1}'
  ],
  [
    "「(#{branches.join('|')})」ブランチを削除する",
    'git branch -d #{$1}'
  ],
] +
if params.length > 0
  [
    [
      "「(#{params.join('|')})」という名前の新しいブランチを作成する",
      'git branch #{$1}'
    ],
    [
      "新しいブランチを「(#{params.join('|')})」という名前で作成する",
      'git branch #{$1}'
    ]
  ]
else
  []
end
