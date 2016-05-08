# coding: utf-8

def branches
  `git branch`.split(/\n/).map { |line|
    line.chomp!
    line.sub(/^../,'')
  }
end


