# coding: utf-8

module Githelp
  def git_check
    res = nil
    begin
      res = `git log`
    rescue
    end
    res != ''
  end
end
  


