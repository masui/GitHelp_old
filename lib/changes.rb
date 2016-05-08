# coding: utf-8

def changed(since)
  files.find_all { |file|
    `git log --oneline --since='#{since}' #{file} | wc` !~ /  0  /
  }
end

def unchanged(since)
  files.find_all { |file|
    `git log --oneline --since='#{since}' #{file} | wc` =~ /  0  /
  }
end



