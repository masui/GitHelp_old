# coding: utf-8
[
  [
    "(#{files.join('|')})というファイルから(#{args.join('|')})という名前が消えたのはいつ？",
    'git log --oneline | ruby -lane \'puts $_.split(/ /).first\' | xargs -J xxx git show xxx #{$1} | grep -C10 \'^-.*#{$2}\''
  ],
  [
    "(#{args.join('|')})という名前が(#{files.join('|')})というファイルから消えたのはいつ？",
    'git log --oneline | ruby -lane \'puts $_.split(/ /).first\' | xargs -J xxx git show xxx #{$2} | grep -C10 \'^-.*#{$1}\''
  ]
]

