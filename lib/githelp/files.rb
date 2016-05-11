# coding: utf-8
#
# 見えるファイル名のリストを作る
#

def files(force=false, argv=ARGV)
  #
  # 引数の中にファイル名とマッチするものがあればファイルリストを取得
  #
  list = begin
           `git ls-files`.split(/\n/)
         rescue
           []
         end
  matched = false
  list.each { |file|
    args.each { |arg|
      matched = true if file.match arg
    }
  }
  if (argv.length > 0 && matched) || force
    list
  else
    ['##DUMMYFILE##']
  end
end

