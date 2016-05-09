# coding: utf-8
if params.length > 0 && files.length > 0

  [
    [
      "「(#{files.join('|')})」ファイルから「(#{params.join('|')})」という名前が消えたのはいつ？",
      'git log --oneline | awk \'{print $1}\' | xargs -J xxx git show xxx #{$1} | grep -C10 \'^-.*#{$2}\''
    ],
    [
      "「(#{params.join('|')})」という名前が「(#{files.join('|')})」ファイルから消えたのはいつ？",
      'git log --oneline | awk \'{print $1}\' | xargs -J xxx git show xxx #{$2} | grep -C10 \'^-.*#{$1}\''
    ]
  ]
else
  nil
end

