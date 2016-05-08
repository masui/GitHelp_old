# coding: utf-8
if params.length > 0 && files.length > 0
  [
    [
      "「(#{files.join('|')})」ファイルに(#{params.join('|')})という名前が出現したのはいつ？",
      'git blame #{$1} | grep #{$2}'
    ],
    [
      "(#{params.join('|')})という名前が「(#{files.join('|')})」ファイルに出現したのはいつ？",
      'git blame #{$2} | grep #{$1}'
    ]
  ]
else
  nil
end

