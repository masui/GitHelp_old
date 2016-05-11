# coding: utf-8

module Githelp
  def changed(since)
    files(true).find_all { |file|
      `git log --oneline --since='#{since}' #{file} | wc` !~ /  0  /
    }
  end
  
  def unchanged(since)
    files(true).find_all { |file|
      `git log --oneline --since='#{since}' #{file} | wc` =~ /  0  /
    }
  end
end

  


