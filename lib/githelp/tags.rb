# coding: utf-8
#
# 存在するタグのリストを作る
#

module Githelp
  def tags(force=false,argv=ARGV)
    #
    # 引数の中にタグ名とマッチするものがあればタグリストを取得
    #
    list = begin
             `git tag`.split(/\n/)
           rescue
             []
           end
    matched = false
    list.each { |tag|
      args.each { |arg|
        matched = true if tag.match arg
      }
    }
    if (argv.length > 0 && matched) || force
      list
    else
      ['##DUMMYTAG##']
    end
  end
end

