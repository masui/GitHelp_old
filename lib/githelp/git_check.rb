# coding: utf-8

module Githelp
  def git_check
    begin
      `git log`
    rescue
      false
    end
  end
end
  


