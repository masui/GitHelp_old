# coding: utf-8
#
# 見えるファイル名のリストを作る
#

# ディレクトリの下も見るべき
# git ls-files で取得すべきか?

def files
  # files = Dir.glob("*").find_all { |file|
  #   file !~ /~$/ &&
  #     file !~ /^\#/
  # }
  files = `git ls-files`.split
end
