# coding: utf-8
#
# 見えるファイル名のリストを作る
#

# ディレクトリの下も見るべき
# git ls-files で取得すべきか?

def files
  if ARGV.length > 0
    `git ls-files`.split
  else
    ['##DUMMY##']
  end
end
