# coding: utf-8
if params.length > 0 && files.length > 0
  [
    [
      "(#{files.join('|')})というファイルから(#{params.join('|')})という名前が消えたのはいつ？",
      'git log --oneline | ruby -lane \'puts $_.split(/ /).first\' | xargs -J xxx git show xxx #{$1} | grep -C10 \'^-.*#{$2}\''
    ],
    [
      "(#{params.join('|')})という名前が(#{files.join('|')})というファイルから消えたのはいつ？",
      'git log --oneline | ruby -lane \'puts $_.split(/ /).first\' | xargs -J xxx git show xxx #{$2} | grep -C10 \'^-.*#{$1}\''
    ]
  ]
else
  nil
end

