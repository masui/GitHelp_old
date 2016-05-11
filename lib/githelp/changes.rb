# coding: utf-8

module Githelp
  def git_log_wc(since,file)
    begin
      `git log --oneline --since='#{since}' #{file} | wc`
    rescue
      nil
    end
  end
  
  def changed(since)
    files(true).find_all { |file|
      wc = git_log_wc(since,file)
      if wc
        wc !~ /  0  /
      else
        false
      end
    }
  end
  
  def unchanged(since)
    files(true).find_all { |file|
      wc = git_log_wc(since,file)
      if wc
        wc =~ /  0  /
      else
        false
      end
    }
  end
end
  


