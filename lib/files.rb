# coding: utf-8
#
# 見えるファイル名のリストを作る
#

def files(argv=ARGV)
  #
  # 引数の中にファイル名とマッチするものがあればファイルリストを取得
  #
  list = `git ls-files`.split(/\n/)
  matched = false
  list.each { |file|
    args.each { |arg|
      matched = true if file.match arg
    }
  }
  if argv.length > 0 && matched
    list
  else
    ['##DUMMYFILE##']
  end
end
