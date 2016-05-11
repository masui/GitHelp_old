# coding: utf-8

module Githelp
  def git_branch
    begin
      `git branch`
    rescue
      nil
    end
  end
  
  def branches
    b = git_branch
    if b
      b.split(/\n/).map { |line|
        line.chomp!
        line.sub(/^../,'')
      }
    else
      [ '##BRANCH##' ]
    end
  end
  
  def branch
    b = git_branch
    if b
      b.split(/\n/).map { |line|
        line.chomp!
        if line =~ /^\* (.*)$/ then
          return $1
        end
      }
      ''
    else
      ''
    end
  end
end


