# coding: utf-8
#
# 結城氏が欲しいといったもの
# https://www.facebook.com/toshiyukimasui/posts/10154167175512498?comment_id=10154167320572498
#

if params.length > 0
  [
    [
      "最初に(#{params.join('|')})という文字列を含むコミットをした時から現在までに追加されたファイルはどれとどれ？",
      'git log --oneline --date=iso-strict --format=\'%cd %s\' | grep #{$1} | tail -1 | awk \'{print $1}\' | xargs changed '
    ],
  ]
else
  nil
end
