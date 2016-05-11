# coding: utf-8

module Githelp
  def branches
    `git branch`.split(/\n/).map { |line|
      line.chomp!
      line.sub(/^../,'')
    }
  end
  
  def branch
    `git branch`.split(/\n/).map { |line|
      line.chomp!
      if line =~ /^\* (.*)$/ then
        return $1
      end
    }
    ''
  end
end


